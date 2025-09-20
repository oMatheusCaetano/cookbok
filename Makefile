# Read .env file if it exists
ifneq (,$(wildcard .env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

# Commands
dev:
	docker compose -f $(DOCKER_COMPOSE_FILE_DEV) up --build --force-recreate

dev-detached:
	docker compose -f $(DOCKER_COMPOSE_FILE_DEV) up --build --force-recreate -d

migration-up:
	docker exec -it $(API_CONTAINER_NAME) php artisan migrate

%:
	@:
