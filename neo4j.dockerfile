FROM neo4j:4.0-enterprise as build-stage
LABEL maintainer="Jared Kozak <jkozak@duenorthsystems.org>"
# docker build . -f=neo4j.dockerfile -t=jaredkozak/neo4j-apoc:3.5.9-enterprise && docker push jaredkozak/neo4j-apoc:3.5.9-enterprise
# https://github.com/umb/neo4j-apoc/blob/master/Dockerfile


ENV APOC_VERSION 4.0.0.15
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar

RUN apt-get update
RUN apt-get install wget -y
RUN wget $APOC_URI && mv apoc-${APOC_VERSION}-all.jar plugins/apoc-${APOC_VERSION}-all.jar
RUN chmod 755 plugins/apoc-${APOC_VERSION}-all.jar
RUN chown neo4j:neo4j plugins/apoc-${APOC_VERSION}-all.jar

EXPOSE 7474 7473 7687
CMD ["neo4j"]
