FROM rabbitmq:3.8.0-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

RUN adduser -D -g rabbitmq -h /var/lib/rabbitmq
USER rabbitmq:rabbitmq
