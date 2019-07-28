#!/bin/sh
docker exec kafka sh -c "kafka-console-consumer --bootstrap-server kafka:9092 --topic senml --from-beginning"	
