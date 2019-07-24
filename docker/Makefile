build:
	docker build -t easyglobalmarket/mqtt-gateway-prometheus ./gateway
push:
	docker push easyglobalmarket/mqtt-gateway-prometheus	
run:
	docker network create --driver bridge egm || true
	#docker run -d --name hdd-rabbitmq  -p 15672:15672 -p 5672:5672 -p 1883:1883 -p 9419:9419 --net=egm  egm/rabbitmq
	#docker exec hdd-rabbitmq /docker-rabbitmq/init.sh
	#docker run -d --name hdd-rabbitmq-exporter --net=container:hdd-rabbitmq kbudde/rabbitmq-exporter -e RABBIT_URL='http://192.168.99.100:15672' -e RABBIT_USER='hub-iot' -e RABBIT_PASSWORD='hub-iot'
	docker-compose up -d db
	docker-compose up -d
stop:
	docker stop hdd-rabbitmq || true
	docker rm hdd-rabbitmq || true
	docker stop hdd-rabbitmq-exporter || true
	docker rm hdd-rabbitmq-exporter || true
	docker-compose down
	
	