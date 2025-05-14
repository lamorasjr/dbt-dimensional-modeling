# Common Commands

## Docker

1 - Create and start containers from the docker-compose file.
```
docker-compose up -d
``` 

2 - List containers / To check if all containers running normally
```
docker ps
```

3 - Stop all the containers/services
```
docker-compose stop
``` 

4 - Stop and remove all containers, networks
```
docker-compose down
```

5 - To remove all containers, volumes, images and remove chache data
```
docker system prune -a
```

## Dbt

1 - Check if all settings for dbt are ready
```
dbt debug
```

2 - Install dbt project dependencies
```
dbt deps
```

3 - Populate database with seeds data
```
dbt seed --target dev
```