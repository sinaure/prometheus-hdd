#https://www.baeldung.com/kafka-connect-mqtt-mongodb
curl -d kafka-connect/config/connect-mqtt-source.json -H "Content-Type: application/json" -X POST http://192.168.99.100:8083/connectors