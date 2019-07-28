#!/bin/sh
docker exec kafka sh -c "seq 42 | kafka-console-producer --broker-list kafka:9092 --topic senml && echo 'Produced 42 messages.'" 
