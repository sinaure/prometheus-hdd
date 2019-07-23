#!/bin/sh
# Create Rabbitmq user
sleep 25
echo "RABBITMQ_USER:  $RABBITMQ_USER "
echo "RABBITMQ_PASSWORD:  $RABBITMQ_PASSWORD "


rabbitmqctl node_health_check 
rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASSWORD
rabbitmqctl set_user_tags $RABBITMQ_USER administrator
rabbitmqctl set_permissions -p / $RABBITMQ_USER  ".*" ".*" ".*"
rabbitmqctl list_users

rabbitmq-plugins enable rabbitmq_mqtt
