build:
	docker-compose build

test:
	docker-compose run app sh -c "python manage.py test && flake8"

	