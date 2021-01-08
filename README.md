# ssh-docker

Create dockerized OpenSSH-Server built on top of [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) image.  

## Image components

Base distribution:
* [Ubuntu:20.04](https://packages.ubuntu.com/focal/ubuntu-minimal)

Additional services:
* [OpenSSH Server](https://ubuntu.com/server/docs/service-openssh)

Configurations:
* Default command: `/usr/sbin/sshd -D`
* Exposed port: 22
* User: test
* Password: test

## Usage

Pull docker image from Docker Hub
```
docker pull dimasmol/ssh-docker
```
Run a container
```
dimasmol/ssh-docker
```
Get an IP Address of your container
```
docker inspect <CONTAINER ID> | grep -w "IPAddress" | awk '{ print $2 }' | head -n 1 | cut -d "," -f1
```
SSH into running container using previously exposed port (22). Password: test
```
ssh test@<CONTAINER IP ADDRESS> -p 22
```
