FROM openjdk:8-jdk-alpine

LABEL mantainer="Andrea Pellegrini <uschti@gmail.com>"

ENV ACTIVEMQ_VERSION 5.15.3
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME /opt/activemq

RUN mkdir -p /opt && addgroup -S activemq && \
    adduser -S -H -G activemq -h $ACTIVEMQ_HOME activemq

RUN apk add --update curl && rm -rf /var/cache/apk/* && mkdir -p /opt

RUN curl -s -S https://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz | tar -xvz -C /opt && \
    ln -s /opt/$ACTIVEMQ $ACTIVEMQ_HOME && \
    chown -R activemq:activemq /opt/$ACTIVEMQ && \
    chown -h activemq:activemq $ACTIVEMQ_HOME


USER activemq
WORKDIR $ACTIVEMQ_HOME

EXPOSE 1883 5672 8161 61613 61614 61616
ENTRYPOINT ["/bin/sh", "-c", "bin/activemq console"]
