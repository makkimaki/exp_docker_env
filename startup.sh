#!/bin/bash

. ~/.bashrc

echo "startup: start jupyterlab"
# nohup jupyter lab --allow-root --ip=0.0.0.0 --no-browser &

# conda virtual env setup
# /opt/miniconda3/condabin/conda create -y --name conda39 python=3.9.1 pip 
# for Dockerfile CMD instruction
/bin/bash 
echo "startup: start sshd.."
/usr/sbin/sshd -D
echo "service ssh restarintg..."
/usr/sbin/service ssh restart