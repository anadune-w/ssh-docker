FROM ubuntu:20.04

LABEL release-date="2020-12-30" maintainer="Dima Smolskyi <d.smolskyi@gmail.com>"

RUN apt update && apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test 

RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
