FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
  python3.x \
  python3-pip \
  git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /rentrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
