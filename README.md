# exp_docker_env

# Basic command
## build image
```
$ docker build -t <tag name> .
```
When it is finished, you can see the named tag via `$docker images`.

## running the container
```
$ docker run --rm --gpus all -v ~/work:/work -p 20021:22 -it <container name> bash
```
Then you finally go inside the container. At this step, execute the following command inside the container. 
```
$service ssh restart
```
Now you can SSH to the container!