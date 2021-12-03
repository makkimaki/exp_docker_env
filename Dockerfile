FROM nvidia/cuda:11.0.3-cudnn8-runtime-ubuntu18.04
ENV HOME /root

WORKDIR $HOME  
# RUN mkdir -p $HOME/.ssh
# COPY ./.bashrc $HOME/

RUN apt-get update && \
    apt-get install -y \
    sudo \
    wget \
    curl \
    vim \
    git \
    openssh-server openssl python-openssl \
    && apt-get install -y python3 python3-pip \
    && apt install -y language-pack-ja-base apt-utils vim \
    && update-locale LANG=ja_JP.UTF-8 \
    && update-alternatives --install /usr/bin/python python /usr/bin/python3 0 \
    && update-alternatives --install /usr/bin/pip pip  /usr/bin/pip3 0 \
    && pip install --upgrade pip 

RUN apt-get install -y ssh \
    && mkdir /var/run/sshd 
RUN echo 'root:screencast' | chpasswd
RUN sed -ri 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN sed -ri 's/^#PermitEmptyPasswords no/PermitEmptyPasswords no/' /etc/ssh/sshd_config
# RUN sed -i 's/#Port 22/Port 20022/' /etc/ssh/sshd_config

WORKDIR /root 
RUN mkdir -p /root/.ssh 
ADD makkimaki-mac.pub /root/.ssh/authorized_keys
# ADD makkimaki-mac.pub /root/.ssh/makkimaki-mac.pub

# COPY makkimaki-mac.pub /root/authorized_keys
# RUN mkdir ~/.ssh && \
# RUN mv ~/authorized_keys ~/.ssh/authorized_keys && \
    # chmod 0600 ~/.ssh/authorized_keys
RUN chmod 0700 /root/.ssh
RUN service ssh restart
RUN mkdir -p /dataset

RUN git config --global user.name "makkimaki" \
    && git config --global user.email "shellingford-93.4.2@hotmail.co.jp"

# jupyterlab
RUN apt-get install -y curl libexpat1-dev gettext \
    && curl -sL https://deb.nodesource.com/setup_15.x | bash - \
    && apt-get -y install nodejs 

EXPOSE 22
WORKDIR /work/

CMD ["/bin/bash", "/usr/sbin/sshd", "-D", "/usr/sbin/service", "ssh", "restart"]

    