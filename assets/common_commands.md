# Common Commands

## Docker

### 1 - Start container 
Create and start containers as defined in the `docker-compose.yml` file.
```bash
docker-compose up -d
``` 

### 2 - List running containers
Verify that all containers are up and running.
```bash
docker ps
```

### 3 - Stop running containers
Stop all running containers defined in `docker-compose.yml`.
```bash
docker-compose stop
``` 

### 4 - Stop and remove containers, networks, etc
Completely stope and remove the Docker environment.
```bash
docker-compose down
```

### 5 - Clean up unused Docker resources
Remove all stopped containers, unused images, networks, and build cache - this will delete all Docker resources.
```bash
docker system prune -a
```

## Dbt

### 1 - Validate dbt environment
Check the dbt project connection and configuration.
```bash
dbt debug
```

### 2 - Install dbt dependencies
Install packages dependencies listed in packages.yml.
```bash
dbt deps
```

## 3 - Load seed data
Populate the database with CSV files in the `seeds/` directory.
```bash
dbt seed --target dev
```

### 4 - Build all models and run tests
Compile and execute all models and tests.
```bash
dbt build
```

### 5 - Run specific analyses or ad hoc queries
Execute a saved SQL query.
```bash
dbt show --select path/to/query.sql
```

### 6 - Generate dbt documentation site
Build the dbt documentation file.
```bash
dbt docs generate
```

### 7 - Serve dbt documentation locally
Starts a local web server within generated documentation.
```bash
dbt docs serve
```