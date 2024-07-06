# GoDocker
Basic skeleton to run go program with air in a docker container

## Using the Makefile
```make help```

## Using terminal

- Create the docker image: ``sudo docker build -t my-go-docker . ``

- Run the docker image: ``sudo docker run -p 8080:8080  my-go-docker``

- Run the docker with mounted volumes: ``sudo docker run -p 8080:8080 --rm -v $(pwd):/app -v /app/tmp --name my-go-docker-air my-go-docker``