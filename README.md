* Build and run image:

```
docker build --no-cache --pull --tag rabbitmq-erlang-rpm-104:latest .
docker run --tty --interactive --publish 15672:15672  rabbitmq-erlang-rpm-104:latest
```
