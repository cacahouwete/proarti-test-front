DOCKER_COMPOSE = docker-compose
DOCKER_EXEC    = $(DOCKER_COMPOSE) exec
DOCKER_RUN     = $(DOCKER_COMPOSE) run --rm

NPM_RUN   = $(DOCKER_RUN) app npm

APPLICATION = develop
BRANCH      = develop

##
## Project
## -------
##

build: docker-compose.override.yml
	$(DOCKER_COMPOSE) pull --ignore-pull-failures
	COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 $(DOCKER_COMPOSE) build --pull --parallel

kill: docker-compose.override.yml
	$(DOCKER_COMPOSE) kill || true
	$(DOCKER_COMPOSE) down --volumes --remove-orphans

install: ## Install and start the project
install: build
	$(MAKE) start

reset: ## Stop and start a fresh install of the project
reset: kill
	$(MAKE) install

start: node_modules docker-compose.override.yml ## Start the project
	$(DOCKER_COMPOSE) up -d --remove-orphans --no-recreate

ss: ## Start Simple : start the project
ss: start

start-deploy: ## Start only deploy dependencies
	$(DOCKER_COMPOSE) up -d --remove-orphans --no-recreate ruby

stop: docker-compose.override.yml ## Stop the project
	$(DOCKER_COMPOSE) stop

clean: ## Stop the project and remove generated files
clean: kill
	rm -rf node_modules

docker-compose.override.yml: docker-compose.override.yml.dist
ifeq ($(shell test -f docker-compose.override.yml && echo -n yes),yes)
	@echo "Your docker-compose.override.yml is outdated."
	@while [ -z "$$CONTINUE" ]; do \
		read -r -p "# Do you want to refresh your docker-compose.override.yml ? [y/N] : " CONTINUE; \
	done ; \
	if [ $$CONTINUE = "y" ] || [ $$CONTINUE = "Y" ]; then \
		cp docker-compose.override.yml.dist docker-compose.override.yml ; \
		echo "=> Refresh done" ; \
	fi
else
	cp -n docker-compose.override.yml.dist docker-compose.override.yml
endif

package-lock.json: package.json
	$(NPM_RUN) update

node_modules: package-lock.json
	$(NPM_RUN) install

.PHONY: build kill install reset start ss start-deploy stop clean

##
## Utils
## -----
##

##
## Tests
## -----
##

jest: node_modules ## Run all jest tests
	$(NPM_RUN) run test

.PHONY: jest

##
## Quality assurance
## -----------------
##

lint-js: node_modules ## Run lint for all vue, ts, js files
	$(NPM_RUN) run lint:js

lint-js-fix: node_modules ## Run lint for all vue, ts, js files
	$(NPM_RUN) run lint:js-fix

lint-style:  node_modules ## Run lint css for all vue files
	$(NPM_RUN) run lint:style

.PHONY: lint-js lint-style

.DEFAULT_GOAL := help
help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'
.PHONY: help
