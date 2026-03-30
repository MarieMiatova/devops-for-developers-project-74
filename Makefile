
setup:
	docker-compose run --rm app make setup


dev:
	docker-compose up


test:
	docker-compose run --rm app make test


ci:
	docker-compose run --rm app make test


build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app

clean:
	docker-compose down -v --remove-orphans