# ubuntu-sshd-nginx

Create dockerized SFTP host built on top of [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) image.

## Image components

Base distribution:
* [Focal (20.04 LTS)](https://packages.ubuntu.com/focal/ubuntu-minimal)

Additional services:
* [OpenSSH Server](https://ubuntu.com/server/docs/service-openssh)
* [nginx](http://nginx.org/)

Configurations:
* Default command: `/usr/bin/supervisord`
* Exposed ports: 22 80 443
* Root password: root
* Nginx user: www-data
* `PermitRootLogin yes`
