FROM lsiobase/xenial:latest

RUN \
  apt-get update && \
  apt-get install -y \
    git \
    python3-pip && \
  pip3 install --upgrade pip

COPY root /

RUN pip3 install homeassistant

VOLUME /homeassistant

EXPOSE 8123
