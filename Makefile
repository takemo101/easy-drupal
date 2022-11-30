.PHONY: setup
setup: ## setup
	cp .example.env .env

.PHONY: create-project
create-project: ## drupal create project
	docker-compose run --rm composer create-project drupal/recommended-project --ignore-platform-reqs
	make mv

.PHONY: mv
mv: ## drupal project copy
	mv ./recommended-project/* ./
	rm -rf ./recommended-project

.PHONY: start
start: ## drupal start
	docker-compose up -d mysql drupal phpmyadmin

.PHONY: stop
stop: ## drupal stop
	docker-compose stop

.PHONY: shell
shell: ## drupal exec
	docker-compose exec drupal bash
