#!/bin/sh
fuser -k 8888/tcp | true

cd confighub
mvn -q spring-boot:start
sleep 5
cd ../service

echo "#### START #####"
mvn -q clean spring-boot:run
echo expected: application
mvn -q spring-boot:run -Dspring-boot.run.profiles=dev
echo expected: application-dev
mvn -q spring-boot:run -Dspring-boot.run.profiles=staging
echo expected: application-staging
mvn -q spring-boot:run -Dspring-boot.run.profiles=dev,staging
echo expected: application-staging
mvn -q spring-boot:run -Dspring-boot.run.profiles=staging,dev
echo expected: application-dev

echo "################"
echo Now with Hoxton.SR1
echo "#######################"
cd ../servicesr1

echo "#### START #####"
mvn -q clean spring-boot:run
echo expected: application
mvn -q spring-boot:run -Dspring-boot.run.profiles=dev
echo expected: application-dev
mvn -q spring-boot:run -Dspring-boot.run.profiles=staging
echo expected: application-staging
mvn -q spring-boot:run -Dspring-boot.run.profiles=dev,staging
echo expected: application-staging
mvn -q spring-boot:run -Dspring-boot.run.profiles=staging,dev
echo expected: application-dev

echo "#### END #####"

fuser -k 8888/tcp
