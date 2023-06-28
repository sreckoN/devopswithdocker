# DevOps with Docker 🚢

## Notable Projects

### Frontend + Backend

This Docker Compose file represents a basic setup for running a frontend application (frontend) communicating with a backend API (backend) using Redis for caching and PostgreSQL for data storage. Nginx serves as a reverse proxy to route requests between the frontend and backend.

[docker-compose](https://github.com/sreckoN/devopswithdocker/tree/master/part%202/Exercise%202.9)

### Pipeline 1: Automatically build image and push to DockerHub

This pipeline is built so that every time code is pushed to 'main' branch, it automatically creates a Docker image and pushes it to DockerHub (using GitHub Actions).

[repo](https://github.com/sreckoN/express-app/tree/main)

### Pipeline 2: Pull code, build an image inside a container, push it to DockerHub

This Dockerized script facilitates the cloning of a GitHub repository, building a Docker image based on the cloned repository, and pushing the image to a Docker registry using the provided arguments. It utilizes a Bash script to automate the process and communicates with the Docker daemon via the docker.sock socket.

[script](https://github.com/sreckoN/devopswithdocker/tree/master/part%203/Exercise%203.4)

### Multi-Stage Builds

A couple examples of using Multi-Stage builds as a way to reduce image sizes:

[frontend](https://github.com/sreckoN/devopswithdocker/tree/master/part%203/Exercise%203.8)
[backend](https://github.com/sreckoN/devopswithdocker/tree/master/part%203/Exercise%203.9)
[express-app](https://github.com/sreckoN/devopswithdocker/tree/master/part%203/Exercise%203.10)