FROM rabbitmq:3.8.0-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

USER root
RUN chmod 700 /var/lib/rabbitmq
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf
RUN echo $(ls /var/lib/rabbitmq)

USER rabbitmq:rabbitmq
