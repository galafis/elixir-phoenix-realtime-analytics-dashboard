# Real-Time Analytics with Elixir and Phoenix

![Elixir](https://img.shields.io/badge/Elixir-4B275F?style=for-the-badge&logo=elixir&logoColor=white) ![Phoenix](https://img.shields.io/badge/Phoenix-F1552A?style=for-the-badge&logo=phoenix-framework&logoColor=white) ![InfluxDB](https://img.shields.io/badge/InfluxDB-22ADF6?style=for-the-badge&logo=influxdb&logoColor=white)

---

## 🇧🇷 Dashboard de Analytics em Tempo Real com Elixir e Phoenix

Este repositório demonstra a construção de um sistema de analytics em tempo real utilizando Elixir, Phoenix LiveView e InfluxDB. A solução é projetada para ser altamente concorrente e escalável, ideal para cenários que exigem a ingestão e visualização de dados em tempo real.

### 🎯 Objetivo

O objetivo é fornecer um exemplo prático de como Elixir e o ecossistema Phoenix podem ser usados para construir aplicações de dados reativas e de baixa latência. Este projeto aborda o processamento de streaming de eventos, armazenamento de séries temporais e a criação de dashboards interativos que se atualizam em tempo real.

### 📂 Conteúdo do Repositório

*   **/lib**: Código-fonte da aplicação Elixir.
    *   `analytics`: Lógica de negócio principal, incluindo o processamento de eventos com `GenStage`.
    *   `analytics_web`: A aplicação web Phoenix, com os LiveViews para o dashboard.
*   **/assets**: Arquivos de front-end (CSS, JavaScript).
*   **/priv**: Diretório para assets privados, como seeds de banco de dados.
*   **/test**: Testes para a aplicação.
*   `mix.exs`: Arquivo de projeto com as dependências.

### ⚡️ Funcionalidades

*   **Ingestão de Dados em Tempo Real**: Utiliza `GenStage` para criar um pipeline de processamento de dados concorrente.
*   **Dashboard Interativo**: Interface construída com `Phoenix LiveView` que se atualiza automaticamente sem a necessidade de recarregar a página.
*   **Armazenamento de Séries Temporais**: Integração com `InfluxDB` para armazenar e consultar dados de séries temporais de forma eficiente.
*   **Visualização de Dados**: Gráficos que exibem métricas e KPIs em tempo real.

---

## 🇬🇧 Real-Time Analytics Dashboard with Elixir and Phoenix

This repository demonstrates how to build a real-time analytics system using Elixir, Phoenix LiveView, and InfluxDB. The solution is designed to be highly concurrent and scalable, ideal for scenarios that require real-time data ingestion and visualization.

### 🎯 Objective

The goal is to provide a practical example of how Elixir and the Phoenix ecosystem can be used to build reactive, low-latency data applications. This project covers event stream processing, time-series storage, and the creation of interactive dashboards that update in real-time.

### 📂 Repository Content

*   **/lib**: Elixir application source code.
    *   `analytics`: Core business logic, including event processing with `GenStage`.
    *   `analytics_web`: The Phoenix web application, with LiveViews for the dashboard.
*   **/assets**: Front-end assets (CSS, JavaScript).
*   **/priv**: Directory for private assets, such as database seeds.
*   **/test**: Tests for the application.
*   `mix.exs`: Project file with dependencies.

### ⚡️ Features

*   **Real-Time Data Ingestion**: Uses `GenStage` to create a concurrent data processing pipeline.
*   **Interactive Dashboard**: Interface built with `Phoenix LiveView` that updates automatically without page reloads.
*   **Time-Series Storage**: Integration with `InfluxDB` for efficient storage and querying of time-series data.
*   **Data Visualization**: Charts that display real-time metrics and KPIs.

