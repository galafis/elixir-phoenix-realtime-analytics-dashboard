# 📊 Elixir Phoenix Realtime Analytics Dashboard

> Real-time analytics dashboard using Elixir, Phoenix LiveView, and InfluxDB.

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![License-MIT](https://img.shields.io/badge/License--MIT-yellow?style=for-the-badge)


[English](#english) | [Português](#português)

---

## English

### 🎯 Overview

**Elixir Phoenix Realtime Analytics Dashboard** is a production-grade Elixir application that showcases modern software engineering practices including clean architecture, comprehensive testing, containerized deployment, and CI/CD readiness.

The codebase comprises **255 lines** of source code organized across **2 modules**, following industry best practices for maintainability, scalability, and code quality.

### ✨ Key Features

- **📊 Interactive Visualizations**: Dynamic charts with real-time data updates
- **🎨 Responsive Design**: Adaptive layout for desktop and mobile devices
- **📈 Data Aggregation**: Multi-dimensional data analysis and filtering
- **📥 Export Capabilities**: PDF, CSV, and image export for reports

### 🏗️ Architecture

```mermaid
graph LR
    subgraph Input["📥 Data Sources"]
        A[Stream Input]
        B[Batch Input]
    end
    
    subgraph Processing["⚙️ Processing Engine"]
        C[Ingestion Layer]
        D[Transformation Pipeline]
        E[Validation & QA]
    end
    
    subgraph Output["📤 Output"]
        F[(Data Store)]
        G[Analytics]
        H[Monitoring]
    end
    
    A --> C
    B --> C
    C --> D --> E
    E --> F
    E --> G
    D --> H
    
    style Input fill:#e1f5fe
    style Processing fill:#f3e5f5
    style Output fill:#e8f5e9
```

### 🚀 Quick Start

#### Prerequisites

- Elixir 1.16+
- Erlang/OTP 26+

#### Installation

```bash
git clone https://github.com/galafis/elixir-phoenix-realtime-analytics-dashboard.git
cd elixir-phoenix-realtime-analytics-dashboard
mix deps.get
```

#### Running

```bash
mix phx.server
```

### 📁 Project Structure

```
elixir-phoenix-realtime-analytics-dashboard/
├── images/
├── lib/
│   └── analytics/
│       └── streaming/
├── test/         # Test suite
├── INSTALL.md
├── LICENSE
└── README.md
```

### 📊 Performance Metrics

The engine calculates comprehensive performance metrics:

| Metric | Description | Formula |
|--------|-------------|---------|
| **Sharpe Ratio** | Risk-adjusted return | (Rp - Rf) / σp |
| **Sortino Ratio** | Downside risk-adjusted return | (Rp - Rf) / σd |
| **Max Drawdown** | Maximum peak-to-trough decline | max(1 - Pt/Pmax) |
| **Win Rate** | Percentage of profitable trades | Wins / Total |
| **Profit Factor** | Gross profit / Gross loss | ΣProfit / ΣLoss |
| **Calmar Ratio** | Return / Max Drawdown | CAGR / MDD |
| **VaR (95%)** | Value at Risk | 5th percentile of returns |
| **Expected Shortfall** | Conditional VaR | E[R | R < VaR] |

### 🛠️ Tech Stack

| Technology | Description | Role |
|------------|-------------|------|
| **Elixir** | Core Language | Primary |

### 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### 👤 Author

**Gabriel Demetrios Lafis**
- GitHub: [@galafis](https://github.com/galafis)
- LinkedIn: [Gabriel Demetrios Lafis](https://linkedin.com/in/gabriel-demetrios-lafis)

---

## Português

### 🎯 Visão Geral

**Elixir Phoenix Realtime Analytics Dashboard** é uma aplicação Elixir de nível profissional que demonstra práticas modernas de engenharia de software, incluindo arquitetura limpa, testes abrangentes, implantação containerizada e prontidão para CI/CD.

A base de código compreende **255 linhas** de código-fonte organizadas em **2 módulos**, seguindo as melhores práticas do setor para manutenibilidade, escalabilidade e qualidade de código.

### ✨ Funcionalidades Principais

- **📊 Interactive Visualizations**: Dynamic charts with real-time data updates
- **🎨 Responsive Design**: Adaptive layout for desktop and mobile devices
- **📈 Data Aggregation**: Multi-dimensional data analysis and filtering
- **📥 Export Capabilities**: PDF, CSV, and image export for reports

### 🏗️ Arquitetura

```mermaid
graph LR
    subgraph Input["📥 Data Sources"]
        A[Stream Input]
        B[Batch Input]
    end
    
    subgraph Processing["⚙️ Processing Engine"]
        C[Ingestion Layer]
        D[Transformation Pipeline]
        E[Validation & QA]
    end
    
    subgraph Output["📤 Output"]
        F[(Data Store)]
        G[Analytics]
        H[Monitoring]
    end
    
    A --> C
    B --> C
    C --> D --> E
    E --> F
    E --> G
    D --> H
    
    style Input fill:#e1f5fe
    style Processing fill:#f3e5f5
    style Output fill:#e8f5e9
```

### 🚀 Início Rápido

#### Prerequisites

- Elixir 1.16+
- Erlang/OTP 26+

#### Installation

```bash
git clone https://github.com/galafis/elixir-phoenix-realtime-analytics-dashboard.git
cd elixir-phoenix-realtime-analytics-dashboard
mix deps.get
```

#### Running

```bash
mix phx.server
```

### 📁 Estrutura do Projeto

```
elixir-phoenix-realtime-analytics-dashboard/
├── images/
├── lib/
│   └── analytics/
│       └── streaming/
├── test/         # Test suite
├── INSTALL.md
├── LICENSE
└── README.md
```

### 📊 Performance Metrics

The engine calculates comprehensive performance metrics:

| Metric | Description | Formula |
|--------|-------------|---------|
| **Sharpe Ratio** | Risk-adjusted return | (Rp - Rf) / σp |
| **Sortino Ratio** | Downside risk-adjusted return | (Rp - Rf) / σd |
| **Max Drawdown** | Maximum peak-to-trough decline | max(1 - Pt/Pmax) |
| **Win Rate** | Percentage of profitable trades | Wins / Total |
| **Profit Factor** | Gross profit / Gross loss | ΣProfit / ΣLoss |
| **Calmar Ratio** | Return / Max Drawdown | CAGR / MDD |
| **VaR (95%)** | Value at Risk | 5th percentile of returns |
| **Expected Shortfall** | Conditional VaR | E[R | R < VaR] |

### 🛠️ Stack Tecnológica

| Tecnologia | Descrição | Papel |
|------------|-----------|-------|
| **Elixir** | Core Language | Primary |

### 🤝 Contribuindo

Contribuições são bem-vindas! Sinta-se à vontade para enviar um Pull Request.

### 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

### 👤 Autor

**Gabriel Demetrios Lafis**
- GitHub: [@galafis](https://github.com/galafis)
- LinkedIn: [Gabriel Demetrios Lafis](https://linkedin.com/in/gabriel-demetrios-lafis)
