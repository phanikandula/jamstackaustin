serve:
	hugo server --baseUrl=127.0.0.1 --bind=0.0.0.0
build:
	rm -rf public
	hugo
ps:
	docker-compose ps
up-build:
	docker-compose up -d --build
up:
	docker-compose up -d
down:
	docker-compose down
exec:
	docker-compose exec dev bash

