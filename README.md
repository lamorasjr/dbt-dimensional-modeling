# Dimensional Data Modeling with dbt

## About
This project is a hands-on implementation of dimensional data modeling using [dbt (data build tool)](https://www.getdbt.com/). It is based on the tutorial ["Building a Kimball Dimensional Model with dbt"](https://github.com/Data-Engineer-Camp/dbt-dimensional-modelling), applying the Kimball methodology on the AdventureWorks dataset.

The goal is to showcase how to structure a modern analytics pipeline using dbt, focusing on clean data modeling, transformation best practices, and documentation.

To simulate the Data Warehouse this project uses a Postgres container within Docker.

## Table of Contents
To be defined...


## Project Structure
```bash
dbt-dimensional-modeling/
├── dbt_adworks/                 # Main dbt project directory
│   ├── analyses/                # SQL analyses not part of models (business questions solutions)
│   ├── macros/                  # Reusable SQL/Jinja functions
│   ├── models/                  # Core dbt models
│   │   ├── staging/             # Stage raw data
│   │   └── marts/               # Final dimensional models (facts & dimensions)
│   ├── seeds/                   # Static CSV datasets loaded into the warehouse
│   │   └── raw/                 # Raw seed data mimicking source systems
│   ├── snapshots/               
│   ├── tests/                   # Custom data quality and unit tests
│   ├── dbt_project.yml          # Main dbt project configuration
│   ├── packages.yml             # dbt package dependencies
│   └── profiles.yml             # dbt profile (usually located in ~/.dbt/)
├── docker/                      # Docker setup for Postgres container
├── images/                      # Diagrams, model ERDs, and visual assets
├── requirements.txt             # Python requirements (e.g. dbt-core, dbt-postgres)
└── README.md                    # Project overview and instructions
```


## Dimensional Model Overview
To be defined...


## Project Development Workflow
- Step 1: Set up a mock dbt project and database
- Step 2: Identify the business process to model
- Step 3: Identify the fact and dimension tables
- Step 4: Create the dimension tables
- Step 5: Create the fact table
- Step 6: Document the dimensional model relationships
- Step 7: Consume the dimensional model


## Data Model Diagram
To be defined...


## Data Model Lineage
To be defined...


## Usage Examples
Based on the requirements identified in Step 2: Identify the Business Process to Model, the following SQL analyses were developed to address key business questions:
- Query 1 – Brief description of what it answers
- Query 2 – Brief description of what it answers
- Query 3 – Brief description of what it answers

## Project Documentations
To be defined...

## Prerequisites
To be defined...


## Setup Instructions
To be defined...


## dbt Common Commands
To be defined...


## References & Credits

The content of this project is my approach for the tutorial presented in the bellow project and article:

- Article: [Building a Kimball dimensional model with dbt](https://docs.getdbt.com/blog/kimball-dimensional-model)
- Github Repo: [Data-Engineer-Camp/dbt-dimensional-modelling](https://github.com/Data-Engineer-Camp/dbt-dimensional-modelling/tree/main)


Additional resources:
- More about dbt: [dbt Docs](https://docs.getdbt.com/docs/introduction)
- Project dataset: [Adventure Works](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)