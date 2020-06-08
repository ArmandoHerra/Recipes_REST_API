build:
	docker-compose build --no-cache --force-rm

test:
	docker-compose run --rm app sh -c "python manage.py test && flake8"

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down -v

migrations:
	docker-compose run --rm app sh -c "python manage.py makemigrations"

migrations-core:
	docker-compose run --rm app sh -c "python manage.py makemigrations core"