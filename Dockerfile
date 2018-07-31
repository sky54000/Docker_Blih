FROM ubuntu:18.04

COPY packages/blih.py /tmp/blih.py
COPY requirements.txt /tmp/requirements.txt

RUN apt-get update; \
    DEBIAN_FRONTEND=noninteractive  apt-get install -y python python-pip git php-dev; \
    pip install --upgrade pip ; \
    pip install -r /tmp/requirements.txt ; \
    chmod +x /tmp/blih.py ;

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
