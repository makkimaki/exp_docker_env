#!/bin/bash

. ~/.bashrc

echo "startup: start jupyterlab"
nohup jupyter lab --allow-root --ip=0.0.0.0 --no-browser &

echo "startup: start sshd"
/usr/sbin/sshd -D