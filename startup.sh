#!/bin/bash

. ~/.bashrc

echo "startup: start jupyterlab"
# nohup jupyter lab --allow-root --ip=0.0.0.0 --no-browser &

# for Dockerfile CMD instruction
/bin/bash 
echo "service ssh restarintg..."
/usr/sbin/service ssh restart
echo "startup: start sshd.."
/usr/sbin/sshd -D