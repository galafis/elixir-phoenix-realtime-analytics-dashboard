defmodule Analytics.Streaming.EventProcessor do
  @moduledoc """
  Real-time Event Processing with GenStage
  Author: Gabriel Demetrios Lafis
  Description: Process streaming events using GenStage for concurrent data processing
  """

  use GenStage

  # Client API

  @doc """
  Start the event processor
  """
  def start_link(opts \\ []) do
    GenStage.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @doc """
  Process a new event
  """
  def process_event(event) do
    GenStage.cast(__MODULE__, {:new_event, event})
  end

  # Server Callbacks

  @impl true
  def init(_opts) do
    {:producer, {:queue.new(), 0}, dispatcher: GenStage.BroadcastDispatcher}
  end

  @impl true
  def handle_cast({:new_event, event}, {queue, pending_demand}) do
    queue = :queue.in(event, queue)
    dispatch_events(queue, pending_demand, [])
  end

  @impl true
  def handle_demand(incoming_demand, {queue, pending_demand}) do
    dispatch_events(queue, incoming_demand + pending_demand, [])
  end

  # Private Functions

  defp dispatch_events(queue, 0, events) do
    {:noreply, Enum.reverse(events), {queue, 0}}
  end

  defp dispatch_events(queue, demand, events) do
    case :queue.out(queue) do
      {{:value, event}, queue} ->
        dispatch_events(queue, demand - 1, [event | events])

      {:empty, queue} ->
        {:noreply, Enum.reverse(events), {queue, demand}}
    end
  end
end

defmodule Analytics.Streaming.EventTransformer do
  @moduledoc """
  Transform and enrich streaming events
  """

  use GenStage

  def start_link(opts \\ []) do
    GenStage.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @impl true
  def init(_opts) do
    {:producer_consumer, :ok, subscribe_to: [Analytics.Streaming.EventProcessor]}
  end

  @impl true
  def handle_events(events, _from, state) do
    transformed_events =
      events
      |> Enum.map(&transform_event/1)
      |> Enum.filter(&valid_event?/1)

    {:noreply, transformed_events, state}
  end

  defp transform_event(event) do
    event
    |> add_timestamp()
    |> enrich_metadata()
    |> calculate_metrics()
  end

  defp add_timestamp(event) do
    Map.put(event, :processed_at, DateTime.utc_now())
  end

  defp enrich_metadata(event) do
    metadata = %{
      source: "analytics_pipeline",
      version: "1.0.0"
    }

    Map.put(event, :metadata, metadata)
  end

  defp calculate_metrics(event) do
    # Example: Calculate derived metrics
    case event do
      %{type: "sale", amount: amount, quantity: quantity} ->
        Map.put(event, :unit_price, amount / quantity)

      _ ->
        event
    end
  end

  defp valid_event?(%{type: _type, amount: amount}) when amount > 0, do: true
  defp valid_event?(_), do: false
end

defmodule Analytics.Streaming.EventAggregator do
  @moduledoc """
  Aggregate events for real-time analytics
  """

  use GenStage

  def start_link(opts \\ []) do
    GenStage.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @impl true
  def init(_opts) do
    initial_state = %{
      total_events: 0,
      total_revenue: 0.0,
      events_by_type: %{}
    }

    {:consumer, initial_state, subscribe_to: [Analytics.Streaming.EventTransformer]}
  end

  @impl true
  def handle_events(events, _from, state) do
    new_state = Enum.reduce(events, state, &aggregate_event/2)

    # Broadcast updated metrics
    broadcast_metrics(new_state)

    {:noreply, [], new_state}
  end

  defp aggregate_event(event, state) do
    state
    |> update_total_events()
    |> update_revenue(event)
    |> update_events_by_type(event)
  end

  defp update_total_events(state) do
    Map.update!(state, :total_events, &(&1 + 1))
  end

  defp update_revenue(state, %{amount: amount}) do
    Map.update!(state, :total_revenue, &(&1 + amount))
  end

  defp update_revenue(state, _), do: state

  defp update_events_by_type(state, %{type: type}) do
    Map.update!(state, :events_by_type, fn types ->
      Map.update(types, type, 1, &(&1 + 1))
    end)
  end

  defp update_events_by_type(state, _), do: state

  defp broadcast_metrics(metrics) do
    # In production: Broadcast to Phoenix LiveView via PubSub
    Phoenix.PubSub.broadcast(
      Analytics.PubSub,
      "metrics:updates",
      {:metrics_updated, metrics}
    )
  end
end

defmodule Analytics.Streaming.Pipeline do
  @moduledoc """
  Supervisor for the streaming pipeline
  """

  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @impl true
  def init(_opts) do
    children = [
      {Analytics.Streaming.EventProcessor, []},
      {Analytics.Streaming.EventTransformer, []},
      {Analytics.Streaming.EventAggregator, []}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
