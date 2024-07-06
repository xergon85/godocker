default: help

help: ## help information about make commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build-image: ## build docker image
	@docker build -t my-go-docker .

dev: ## run the docker image
	@docker run -p 8080:8080 --rm -v .:/app -v /app/tmp --name my-go-docker-air my-go-docker

