#!/bin/sh

# Base images
docker build -f Dockerfile-openjdk12-openj9 -t wadahiro/openjdk12-openj9 .

# Keycloak images
docker build -f Dockerfile-openjdk12-openj9-keycloak -t wadahiro/keycloak-light-openjdk12-openj9 .
docker build -f Dockerfile-openjdk13ea-keycloak -t wadahiro/keycloak-light-openjdk13ea .


