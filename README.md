![](https://img.shields.io/badge/Microverse-blueviolet)

# budgetApp



## Description

> 

### Screenshots 📸



## Learning objectives



## Setup

## Building container image

- Run below command to create image of web App and DB
```bash
docker-compose build
```

### Publish container image to Docker hub

- To publish docker image of web app and DB ue below command

```bash
docker login
docker tag budget-app_web firsttalk26/budget-app_web
docker tag budget-app_db firsttalk26/budget-app_db

```


### Create Kubernetes services to deploy Budget Web App

```bash
kubectl apply -f postgres-statefulset.yaml
kubectl apply -f rails-app-deployment.yaml

```


## Show your support

Give a ⭐️ if you like this project!



# budgetApp
# budgetApp
