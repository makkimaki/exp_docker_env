#!/bin/bash

. ~/.bashrc

echo "startup: start jupyterlab"

# for Dockerfile CMD instruction
/opt/miniconda3/condabin/conda create -y python=3.9.1 pip --name conda39
service ssh restart 
/bin/bash 
echo "startup: start sshd.."
/usr/sbin/sshd -D
echo "service ssh restarintg..."
/usr/sbin/service ssh restart