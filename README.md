* Build and run image:

```
docker build --no-cache --pull --tag rabbitmq-erlang-rpm-104:latest .
docker run --tty --interactive --publish 15672:15672  rabbitmq-erlang-rpm-104:latest
```

* Management UI memory overview in my environment (Arch Linux)

```
$ docker version
Client:
 Version:           20.10.17
 API version:       1.41
 Go version:        go1.18.3
 Git commit:        100c70180f
 Built:             Sat Jun 11 23:27:28 2022
 OS/Arch:           linux/amd64
 Context:           default
 Experimental:      true

Server:
 Engine:
  Version:          20.10.17
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.18.3
  Git commit:       a89b84221c
  Built:            Sat Jun 11 23:27:14 2022
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          v1.6.8
  GitCommit:        9cd3357b7fd7218e4aec3eae239db1f68a5a6ec6.m
 runc:
  Version:          1.1.3
  GitCommit:
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
  ```
  
![image](https://user-images.githubusercontent.com/514926/184253681-b03649e1-076d-471c-969f-9913259cb795.png)
