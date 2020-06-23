# Dockerhub JaredKozak/neo4j-apoc

This repo has a neo4j enterprise image that is already setup with APOC. It's kinda surprising that
they don't ship this ootb.

Dockerhub available here: https://hub.docker.com/repository/docker/jaredkozak/neo4j-apoc

Add to your project with:

jaredkozak/neo4j-apoc:4.0-enterprise

## Pushing new versions

TAG_NAME=
docker build . -f neo4j.dockerfile --tag jaredkozak/neo4j-apoc:$TAG_NAME-enterprise
docker push jaredkozak/neo4j-apoc:$TAG_NAME-enterprise

