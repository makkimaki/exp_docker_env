# exp_docker_env
step  
1. build the image using this directory (`$ docker build`)
1. run the container (`$ docker run` or `$ docker-compose`)

# docker command based setting
## directory setting
### Host server
- _unser construction_

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
Instead of executing the `$docker` command, you can use `docker-compose` based environment building.

## build image
After switching to the `exp_docker_env` directory, 
```
$ docker-compose build 
```
## run the container
```
$ docker-compose up -d 
```
## confirm the container (optional)
```
$ docker-compose ps
```
You can find the tagged container.

Now you can SSH to the container!