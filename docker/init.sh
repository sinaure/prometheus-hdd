#!/bin/bash

echo "******* mqttgateway: starting init.sh ******"

source /app/config.cfg

echo "ip= $IP"
echo "port= $PORT"

echo "******* mqttgateway starting *******"

mqttgateway  --mqtt.broker-address="tcp://$IP:$PORT" --mqtt.username="hub-iot" --mqtt.password="hub-iot"

