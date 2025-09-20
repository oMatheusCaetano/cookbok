# Cookbook

## 🤔 About

Technical project for [Open Datacenter](https://opendatacenter.com.br/) full stack developer role.

This project uses [Docker](https://www.docker.com/) to run the application based on containers.

### 📦 Docker containers

You will find the docker containers defined as:

- **cookbook_database** -> Container running [PostgreSQL](https://www.postgresql.org/) as database.
- **cookbook_server**   -> Container running [Apache](https://apache.org/) and [Laravel](https://laravel.com/) for server logic.


<br /><br />

## 🏃🏻‍♂️ Setup and Run the application

To run the entire application follow these steps:

### Create environment files

The first environment file we need to create will be located at the root of the project. This file defines variables for Docker and for the Makefile to work properly.
```
cp .env.example .env
```
<br />

The second environment file we need to create will be located inside the `api` folder. This file defines variables for Laravel to work properly.
```
cp api/.env.example api/.env
```

<br />

> You can change the variables values as you wish if needed. Just make sure to keep the values consistent among the files. Also, if you make any changes to the variables some commands that will be shown bellow may need to be updated.


<br /><br />

### Start up the docker containers

Now you can start the docker containers.

There is a Make file attached to this project so we can run commands in a easier way.
```
make dev
```
<br />

If you wold like to run the containers in a detached mode:
```
make dev-detached
```

<br />

If for some reason you can't or don't want to use Makefile, you can use the raw docker compose command
```
docker compose -f docker-compose.dev.yml up --build --force-recreate
```

<br />

And for raw docker compose command in detached mode
```
docker compose -f docker-compose.dev.yml up --build --force-recreate -d
```

<br /><br />

### Run database migrations
The next step is to run the database migrations

Using Makefile
```
make migration-up
```

Using raw docker command
```
docker exec -it cookbook_server php artisan migrate
```

<br /><br />

### 💻 Hosts
Once you followed the steps above you can access this url to reach the `API` directly

[http://localhost:8886](http://localhost:8886)
