# ssh-docker

Create dockerized OpenSSH-Server built on top of [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) image.  

## Image components

Base distribution:
* [Ubuntu:latest](https://packages.ubuntu.com/focal/ubuntu-minimal)

Additional services:
* [OpenSSH Server](https://ubuntu.com/server/docs/service-openssh)

Configurations:
* Default command: `/usr/sbin/sshd -D`
* Exposed port: 22
* User: test
* Password: test
