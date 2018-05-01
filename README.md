Apache ActiveMQ - Alpine image
===============
[Docker](https://www.docker.com/) image for running [ActiveMQ](http://activemq.apache.org/). Based on [Alpine Linux](http://alpinelinux.org/).

[Image on Docker Hub](https://hub.docker.com/r/uschti/activemq/).

Current Tags:
-------------------------
```shell
5.15.3, latest
```


You can build the Docker image:
-------------------------
```shell
docker image build -t uschti/activemq .
```

Or you can get it from Docker Hub:
-------------------------
```shell
docker image pull uschti/activemq
```


Usage:
-----
Run ActiveMQ with default configuration:
```shell
docker container run -d --name activemq -p 8161:8161 -p 1883:1883 -p 5672:5672 -p 61613:61613 -p 61614:61614 -p 61616:61616 uschti/activemq
```


Ports:
-----
Ports exposed by the image:

    8161  Web Console
    1883  MQTT
    5672  AMQP
    61613 STOMP
    61614 WS
    61616 JMS


Application URLs
----------------
admin/admin

[http://localhost:8161/](http://localhost:8161/)

[http://localhost:8161/api/jolokia/](http://localhost:8161/api/jolokia/)


Links
-----
 - https://github.com/trifonnt/docker-alpine-activemq
