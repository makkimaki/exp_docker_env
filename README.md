# Preparation
## GitHub key registration & setup
```
$ ssh-keygen -t ed25519 -C "<email>"
$ eval "$(ssh-agent -s)"
$ vi ~/.ssh/config
```
Edit the ssh config file as below.
```
Host * 
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_ed25519
```
```
$ ssh-add -k ~/.ssh/id_ed25519
```

## Clone the repository
Clone this repository into your Ubuntu based linux environment.
```
$ git clone git@github.com:makkimaki/exp_docker_env.git
```

# After cloning this repo. into local
 _underconstruction_


# exp_docker_env
step  
1. build the image using this directory (`$ docker build`)
1. run the container (`$ docker run` or `$ docker-compose`)

# docker command based setting
## directory setting
### Host server
- _under construction_

### Container server
- _under construction_

## build image
```
$ docker build -t <tag name> .
```
When it is finished, you can see the named tag via `$docker images`.

## run the container
```
$ docker run --rm --gpus all -v ~/work:/work -p <host port>:22 -it <container name> bash
```


# docker-compose command based setting
Instead of executing the `$docker` command, you can use `docker-compose` based environment building. The version is expected to have above `1.29.x` as following.
```
$ docker-compose --version
docker-compose version 1.29.1, build c34c88b2
```

## build image
After switching to the `exp_docker_env` directory, 
```
$ docker-compose build 
```

## run the container
```
$ docker-compose up -d 
```
If you still don't have any built image, this operation will take you from building the container image to running it.

## confirm the container (optional)
```
$ docker-compose ps
```
You can find the tagged container.

Now you can SSH to the container!