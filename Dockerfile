FROM ubuntu:18.04

COPY packages/blih.py /tmp/blih.py
COPY entrypoint.sh /entrypoint.sh

RUN apt-get update; \
    apt-get install -y git php-dev dnf apt; \
    apt-get update; \
    chmod +x /tmp/blih.py ;
    #chmod +x /entrypoint.sh ;
  #


ENTRYPOINT ["/entrypoint.sh"]
