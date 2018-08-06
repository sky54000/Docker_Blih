FROM ubuntu:18.04

COPY packages/blih.py /tmp/blih.py
COPY requirements.txt /tmp/requirements.txt
COPY project/ /tmp/project

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y openssh-client python3 python3-pip git php-dev; \
    pip3 install --upgrade pip3 ; \
    pip3 install -r /tmp/requirements.txt ; \
    ssh-keygen -q -t rsa -N '' -C uploadSystem -f /root/.ssh/id_rsa ; \
    chmod +x /tmp/blih.py ;

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
