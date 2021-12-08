#!/bin/bash

. ~/.bashrc

echo "startup: start jupyterlab"
# nohup jupyter lab --allow-root --ip=0.0.0.0 --no-browser &

# conda virtual env setup
/opt/miniconda3/condabin/conda create -y python=3.9 pip --name conda37

# for Dockerfile CMD instruction
/bin/bash 
echo "startup: start sshd.."
/usr/sbin/sshd -D
echo "service ssh restarintg..."
/usr/sbin/service ssh restart