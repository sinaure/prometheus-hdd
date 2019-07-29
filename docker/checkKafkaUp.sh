docker exec zookeeper sh -c "zkCli.sh -server zookeeper:2181 ls /brokers/ids | tail -n1"
docker exec kafka sh -c "kafka-topics --describe --zookeeper zookeeper:2181"