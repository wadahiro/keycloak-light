#!/bin/sh

# Base images
docker build -f Dockerfile-openjdk12 -t wadahiro/openjdk12 .
docker build -f Dockerfile-openjdk13ea -t wadahiro/openjdk13ea .
docker build -f Dockerfile-openjdk12-openj9 -t wadahiro/openjdk12-openj9 .
docker build -f Dockerfile-cl4cds -t wadahiro/cl4cds .
docker build -f Dockerfile-keycloak -t wadahiro/keycloak .
docker build -f Dockerfile-keycloak-spring-boot -t wadahiro/keycloak-spring-boot .

# Keycloak images
docker build -f Dockerfile-keycloak-official -t wadahiro/keycloak-official .
docker build -f Dockerfile-openjdk11-keycloak -t wadahiro/openjdk11-keycloak .
docker build -f Dockerfile-openjdk12-keycloak -t wadahiro/openjdk12-keycloak .
docker build -f Dockerfile-openjdk13ea-keycloak -t wadahiro/openjdk13ea-keycloak .
docker build -f Dockerfile-openjdk12-openj9-keycloak -t wadahiro/openjdk12-openj9-keycloak .

# Keycloak images with CDS
docker build -f Dockerfile-openjdk11-keycloak-cds -t wadahiro/openjdk11-keycloak-cds .
docker build -f Dockerfile-openjdk12-keycloak-cds -t wadahiro/openjdk12-keycloak-cds .
docker build -f Dockerfile-openjdk13ea-keycloak-cds -t wadahiro/openjdk13ea-keycloak-cds .
docker build -f Dockerfile-openjdk12-openj9-keycloak-cds -t wadahiro/openjdk12-openj9-keycloak-cds .

# Keycloak with spring boot
docker build -f Dockerfile-openjdk12-openj9-keycloak-spring-boot -t wadahiro/openjdk12-openj9-keycloak-spring-boot .
docker build -f Dockerfile-openjdk13ea-keycloak-spring-boot -t wadahiro/openjdk13ea-keycloak-spring-boot .

# Keycloak with spring boot with CDS
docker build -f Dockerfile-openjdk12-openj9-keycloak-spring-boot-cds -t wadahiro/openjdk12-openj9-keycloak-spring-boot-cds .
docker build -f Dockerfile-openjdk13ea-keycloak-spring-boot-cds -t wadahiro/openjdk13ea-keycloak-spring-boot-cds .


