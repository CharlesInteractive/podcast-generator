FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python 3.x \
  python 3-pip \
  git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /rentrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
