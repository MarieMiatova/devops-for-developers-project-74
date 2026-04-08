### Hexlet tests and linter status:
[![Actions Status](https://github.com/MarieMiatova/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/MarieMiatova/devops-for-developers-project-74/actions)


![CI](https://github.com/MarieMiatova/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)



Это учебный DevOps-проект, демонстрирующий настройку современного процесса разработки и доставки приложения с использованием Docker, Docker Compose и GitHub Actions.



setup:


	docker-compose run --rm app make setup


dev:


	docker-compose up

ci:


	cp app/.env.example ./.env
	docker compose -f docker-compose.yml run --rm app make test

build:


	docker-compose -f docker-compose.yml build app

push:


	docker-compose -f docker-compose.yml push app

clean:


	docker-compose down -v --remove-orphans