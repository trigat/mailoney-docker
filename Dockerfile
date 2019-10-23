FROM amd64/ubuntu:latest
MAINTAINER Trigat https://github.com/trigat/mailoney-docker

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install Python and PIP
RUN apt-get update && apt-get install -y python python-pip

RUN pip install hpfeeds

COPY ./mailoney /root/mailoney

ENTRYPOINT cd /root/mailoney && python mailoney.py -i localhost -p 2525 -s "Infrastructure Mail Server" -t schizo_open_relay </dev/null &>/dev/null & /bin/bash
