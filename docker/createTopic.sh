#!/bin/sh
docker exec kafka sh -c "kafka-topics --create --topic senml --replication-factor 1 --partitions 1 --zookeeper zookeeper:2181"	
