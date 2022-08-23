# Docker

- Docker uses client/server architecture. It has a client component that talks to the server using a RESTful API. The server is also called the Docker engine (or daemon) runs in the background and is responsible for doing the actual work

- To bundle an application into an image, we need to create a Dockerfile. A Dockerfile contains all the instructions needed to package up an application into an image

- Can push images to a docker registry like DockerHub

- A container is an isolated environment for running an application. It’s essentially an operating-system process with its own file system

## Image

An image is a bundle of everything needed to run an application. That includes:

- A cut-down OS
- A runtime environment
- Application files
- Third-party libraries
- Environment variables
  etc...

## Containers

- Provides an isolated environment
- Can be stopped and restarted
- Is just a just a special process!

## Containers vs. VMs

Virtual machines are very resource intensive and slow to start. Containers are very lightweight and start quickly because they share the kernel of the host (which is already started).

## Linux Distribution

Common Linux Distributions, most use same commands but there might be small differences between distros.

- Ubuntu
- Debian
- Alpine
- Fedora
- CentOS

## Linux Commands

- printenv
- printenv PATH
- echo $PATH
- export DB_USER=ajkgle;a
- ps
- kill {PID#}

- addgroup app
- adduser -S -G app app
- groups app

- whoami

## Commands

- `docker pull ubuntu` - pull down an image
- `docker run ubuntu` - start a new container from an image
- `docker run -it ubuntu` - start a new container in interactive mode
- `docker run -it react-app sh` or `docker run -it react-app bash`
- `docker start -i {insertPartOfHash}` - load up
- `docker image ls` or `docker images` - list docker images
- `docker ps -a` - container processes by container id

tagging - image can have multiple tags

- `docker build -t react-app:1 .` - tagging the image
- `docker image remove react-app:2`
- `docker image tag b06 react-app:latest`

- `docker history react-app` - view image layers

- `docker container prune` - Remove all stopped containers
- `docker image prune` - Remove dangling containers

- `docker image save -o react-app.tar react-app:3` - save file locally, can unzip and inspect layers
- `docker image load -i react-app.tar` - load image from local

## Mapping Ports

Ports on the containers need to be mapped to ports on the host.

Image tag can be used to keep track of versions
