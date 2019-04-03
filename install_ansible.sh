#!/bin/sh

if [ -z $ANSIBLE_VERSION ]; then
  pip3 install --user ansible[azure]
else
  pip3 install --user ansible[azure]==${ANSIBLE_VERSION}
fi
