# Makefile for Docker-based Laravel application

# Variables
COMPOSE=docker-compose

# Targets
.PHONY: help start stop restart rebuild migrate seed logs bash

help:
	@echo "Usage:"
	@echo "  make start        Start Docker containers"
	@echo "  make stop         Stop Docker containers"
	@echo "  make restart      Restart Docker containers"
	@echo "  make rebuild      Rebuild Docker containers"
	@echo "  make migrate      Run Laravel migrations"
	@echo "  make seed         Seed Laravel database"
	@echo "  make logs         View logs of Docker containers"
	@echo "  make bash         Open bash shell in PHP container"

start:
	$(COMPOSE) up -d

stop:
	$(COMPOSE) down

restart:
	$(COMPOSE) restart

rebuild:
	$(COMPOSE) down
	$(COMPOSE) build
	$(COMPOSE) up -d

migrate:
	$(COMPOSE) exec php php artisan migrate

seed:
	$(COMPOSE) exec php php artisan db:seed

logs:
	$(COMPOSE) logs -f

bash:
	$(COMPOSE) exec php bash
