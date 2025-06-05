#  DataOps Sales Pipeline

Ce projet implémente un pipeline **DataOps** automatisé pour traiter et valider des données de ventes à l’aide de :

- **Apache Airflow** – orchestration
- **dbt** – transformation de données
- **Great Expectations** – validation de la qualité
- **GitHub Actions** – CI/CD
- **DuckDB** – base de données locale simple

---

##  Objectif

Automatiser le chargement, la transformation et la validation de données de ventes issues du fichier `sales.csv` (basé sur le dataset Online Retail de l'UCI ML Repository).

---

##  Structure

```bash
.
├── dbt/
│   ├── dbt_project.yml
│   └── models/
│       ├── staging/
│       │   ├── sources.yml
│       │   └── stg_sales.sql
│       └── marts/
│           └── fct_daily_revenue.sql
├── great_expectations/
│   └── expectations/
│       └── sales_suite.json
├── .github/
│   └── workflows/
│       └── ci.yml
├── data/
│   └── sales.csv
└── README.md
