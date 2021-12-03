# exp_docker_env
step  
1. build the image using this directory (`$ docker build`)
1. run the container (`$ docker run` or `$ docker-compose`)
## build image
```
$ docker build -t <tag name> .
```
When it is finished, you can see the named tag via `$docker images`.

## run the container
```
$ docker run --rm --gpus all -v ~/work:/work -p 20021:22 -it <container name> bash
```
Then you finally go inside the container. At this step, execute the following command inside the container. 
```
$service ssh restart
```
Now you can SSH to the container!