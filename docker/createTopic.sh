#!/bin/sh
docker exec kafka sh -c "/opt/kafka/bin/kafka-topics.sh --create --topic senml --zookeeper zookeeper:2181"	
