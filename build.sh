#!/bin/sh

# Base images
docker build -f Dockerfile-openjdk12 -t wadahiro/openjdk12 .
docker build -f Dockerfile-openjdk13ea -t wadahiro/openjdk13ea .
docker build -f Dockerfile-openjdk12-openj9 -t wadahiro/openjdk12-openj9 .
docker build -f Dockerfile-cl4cds -t wadahiro/cl4cds .
docker build -f Dockerfile-keycloak -t wadahiro/keycloak .
docker build -f Dockerfile-keycloak-spring-boot -t wadahiro/keycloak-spring-boot .

# Keycloak images
#docker build -f Dockerfile-openjdk12-keycloak -t wadahiro/keycloak-light-openjdk12 .
docker build -f Dockerfile-openjdk12-keycloak-cl4cds -t wadahiro/keycloak-light-openjdk12-cl4cds .
docker build -f Dockerfile-openjdk13ea-keycloak-cl4cds -t wadahiro/keycloak-light-openjdk13ea-cl4cds .
#docker build -f Dockerfile-openjdk12-openj9-keycloak -t wadahiro/keycloak-light-openjdk12-openj9 .
#docker build -f Dockerfile-openjdk13ea-keycloak -t wadahiro/keycloak-light-openjdk13ea .


