FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN apt-get update && apt-get install -y supervisor && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && echo "daemon off;" >> /etc/nginx/nginx.conf

RUN mkdir -p /var/log/supervisor
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 22 443

CMD ["/usr/bin/supervisord"]
