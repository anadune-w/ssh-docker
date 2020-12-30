# ubuntu-sshd-nginx

Create dockerized SFTP host built on top of [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) image. The image is using `supervisord` to be able to control multiple binaries on the host machine during startup, as `dockerfile` is not supporting multiple CMD or ENTRYPOINTS directly from its native file config. 

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
