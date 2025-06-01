# Dimensional Data Modeling with dbt

## About
This project is a hands-on implementation of dimensional data modeling using dbt.

It is based on the tutorial ["Building a Kimball Dimensional Model with dbt"](https://github.com/Data-Engineer-Camp/dbt-dimensional-modelling), applying the Kimball methodology to build a Star Schema model and, later on, a OBT (One-Big-Table) using the AdventureWorks dataset to answer proposed business questions.

The goal is to showcase how to structure a modern analytics pipeline using dbt—focusing on clean data modeling, transformation best practices, and documentation—while simulating a Data Warehouse using a PostgreSQL container running within Docker.

<project_architecture_digram>


## Objectives
 - [ ] Set up the project environment, including the database and dbt project structure.
 - [ ] Analyze business requirements to inform the design of the dimensional model.
 - [ ] Ingest raw data into the warehouse using dbt seed functionality.
 - [ ] Design and implement dimension tables following best practices in dimensional modeling.
 - [ ] Design and implement the central fact table to capture key business processes.
 - [ ] Document the data models using dbt docs and visualize relationships with an ER diagram.
 - [ ] Develop SQL views and queries to support business end-user analysis.


## Table of Contents
To be defined...


## Project Structure
```bash
dbt-dimensional-modeling/
├── dbt_adworks/                 # Main dbt project directory
│   ├── analyses/                # SQL for business analyses not part of models
│   ├── macros/                  # Reusable SQL/Jinja functions
│   ├── models/                  # Core dbt models
│   │   ├── staging/             # Staging tables scripts based on the raw data
│   │   └── marts/               # Facts & dimensions tables for dimensional model
│   ├── seeds/                   
│   │   └── raw/                 # Raw data used to mimicking source systems
│   ├── snapshots/               
│   ├── tests/                   
│   ├── dbt_project.yml          # dbt project configuration
│   ├── packages.yml             # dbt package dependencies
│   └── profiles.yml             # dbt profile (usually located in ~/.dbt/)
├── docker/                      # Docker setup for Postgres container
├── images/                      # Diagrams, model ERDs, and visual assets
├── requirements.txt             # Python requirements
└── README.md                    
```


## Dimensional Model Overview
To be defined...

## Data Model Diagram
To be defined...


## Data Model Lineage
To be defined...


## Usage Examples
Based on the requirements identified in Step 2: Identify the Business Process to Model, the following SQL analyses were developed to address key business questions:
- Query 1 – Brief description of what it answers
- Query 2 – Brief description of what it answers
- Query 3 – Brief description of what it answers


## Requirements
- **Python 3.8+** – Required to run dbt and manage the virtual environment  
- **Docker & Docker Compose** – Used to run PostgreSQL as the local data warehouse  


## Setup Instructions
### 1. Clone and Set Up the Project
- Clone this repository:
    ```bash
    git clone https://github.com/lamorasjr/dbt-dimensional-modeling.git

    cd dbt-dimensional-modeling
    ```

- Create and activate a Python virtual environment (Note: Activation command may vary on Windows):
    ```bash
    python -m venv .venv

    source .venv/bin/activate  # On Windows, use: .venv\Scripts\activate
    ```
    
- Install the project dependencies:
    ```bash
    pip install -r requirements.txt
    ```

- Update `profiles.yml` — (Only necessary if you're using a different database as your data warehouse)

### 2. Start the PostgreSQL Docker Container
- Navigate to the `docker/` directory:
    ```bash
    cd docker/
    ```

- Start the PostgreSQL container:
    ```bash
    docker-compose up -d
    ```

### 3. Initialize the dbt Project
- Navigate to the dbt project folder:
    ```bash
    cd dbt_adworks/
    ```
    
- Install dbt package dependencies:
    ```bash
    dbt deps
    ```

- Validate your dbt setup:
    ```bash
    dbt debug
    ``` 

### 4. Run the dbt Pipeline
- Build the entire dbt project (models + tests):
    ```bash
    dbt build
    ```

### 5. Generate and View dbt Documentation
- Generate documentation:
    ```bash
    dbt docs generate
    ```

- Serve the documentation locally:
    ```bash
    dbt docs serve
    ```


## References & Credits

The content of this project is my approach for the tutorial presented in the bellow project and article:

- Article: [Building a Kimball dimensional model with dbt](https://docs.getdbt.com/blog/kimball-dimensional-model)
- Github Repo: [Data-Engineer-Camp/dbt-dimensional-modelling](https://github.com/Data-Engineer-Camp/dbt-dimensional-modelling/tree/main)


Additional resources:
- More about dbt: [dbt Docs](https://docs.getdbt.com/docs/introduction)
- Project dataset: [Adventure Works](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17&tabs=ssms)