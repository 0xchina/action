FROM docker:stable
RUN docker pull docker.elastic.co/elasticsearch/elasticsearch:8.0.0
RUN docker pull mongo
RUN docker pull redis
RUN docker pull eclipse-mosquitto
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]