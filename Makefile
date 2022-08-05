docker_run = docker run --rm --mount type=bind,source="$(shell pwd)/",target=/root/ ee-data-engineering-challenge:0.0.1

.DEFAULT_GOAL := help

.PHONY: help
help: ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install-dependencies
install-dependencies: ## Install challenge dependencies from Pipfile
	docker build --no-cache -t ee-data-engineering-challenge:0.0.1 .
	$(docker_run) pipenv install --dev

.PHONY: tidy
tidy: ## Tidy code
	$(docker_run) pipenv run tidy

.PHONY: lint
lint: ## Lint code
	$(docker_run) pipenv run lint

.PHONY: test
test: ## Run tests
	$(docker_run) pipenv run test

.PHONY: fetch-data
fetch-data: ## Fetch dataset
	$(docker_run) pipenv run fetch_data

.PHONY: run
run: fetch-data ## Run challenge 
	$(docker_run) pipenv run python src/main.py uncommitted/votes.jsonl

.PHONY: run-query
run-query: ## Run query (make query="select * from posts" run-query)
	$(docker_run) sqlite3 warehouse.db "$(query)"


