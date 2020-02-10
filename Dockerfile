FROM raspbian/stretch
MAINTAINER Yarflam
ENV DEBIAN_FRONTEND noninteractive

# Update
RUN apt-get update &&\
    apt-get upgrade -y

# Upgrade Debian 9 to 10
RUN sed -i 's/stretch/buster/g' /etc/apt/sources.list

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get dist-upgrade -y

RUN apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD [ "/bin/bash" ]
