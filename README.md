### run ansible in docker

first biuld it:
```sh
docker build -t ansible-in-docker .
```
and simple use:
```sh
docker run -it --rm ansible-in-docker
```
use with mount volume:(for example all hosts.ini and config and play book in current directory)
```sh
docker run -it --rm -v `pwd`:/work ansible-in-docker
```

todo:

write script for use it easy for example:
```ansible-run foo.yaml```

in this container exist ssh , tmux , nano 
you can change or add to it in dockerfile for example change nano to vim :)
