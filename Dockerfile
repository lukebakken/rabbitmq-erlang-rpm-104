FROM quay.io/centos/centos:stream9

RUN yum install --assumeyes xz

WORKDIR /opt/rabbitmq/tmp

RUN curl -1sLO https://github.com/rabbitmq/erlang-rpm/releases/download/v25.0.3/erlang-25.0.3-1.el9.x86_64.rpm

RUN yum install --assumeyes erlang-25.0.3-1.el9.x86_64.rpm

RUN curl -1sLO https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.10.7/rabbitmq-server-generic-unix-3.10.7.tar.xz

WORKDIR /opt/rabbitmq

RUN tar -C /opt/rabbitmq -xf /opt/rabbitmq/tmp/rabbitmq-server-generic-unix-3.10.7.tar.xz

COPY rabbitmq.conf /opt/rabbitmq/rabbitmq_server-3.10.7/etc/rabbitmq/rabbitmq.conf

RUN /opt/rabbitmq/rabbitmq_server-3.10.7/sbin/rabbitmq-plugins enable --offline rabbitmq_management rabbitmq_top

ENTRYPOINT ["/opt/rabbitmq/rabbitmq_server-3.10.7/sbin/rabbitmq-server"]

EXPOSE 4369 5671 5672 15691 15692 25672
