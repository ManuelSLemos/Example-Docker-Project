start-docker:
	sudo service docker start

bash:
	docker run --rm \
	-p 3000:3000 \
	-v $(PWD):/usr/src/app \
	-w /usr/src/app \
	-it node:16.14 bash

dev:
	docker-compose \
	--env-file .env \
	-f docker-compose.yml \
	-f docker-compose.tools.yml \
	up
