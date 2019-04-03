FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y python-pip \
 && apt-add-repository -y --update ppa:ansible/ansible \
 && apt-get install -y ansible \
 && rm -rf /var/lib/apt/lists/* \
 && pip install ansible[azure]
