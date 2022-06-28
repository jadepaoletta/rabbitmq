FROM rabbitmq:3.8.0-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

RUN chown -R rabbitmq:rabbitmq $HOME && chown -R rabbitmq:rabbitmq $HOME/.ssh && chmod 700 $HOME/.ssh
USER rabbitmq:rabbitmq
