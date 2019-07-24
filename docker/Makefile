build:
	docker build -t easyglobalmarket/mqtt-exporter ./mqtt-exporter
push:
	docker push easyglobalmarket/mqtt-exporter	
run:
	docker network create --driver bridge egm || true
	docker run -d --name hdd-rabbitmq  -p 15672:15672 -p 5672:5672 -p 1883:1883 --net=egm  egm/rabbitmq
	docker exec hdd-rabbitmq /docker-rabbitmq/init.sh
	docker-compose up -d db
	#docker-compose up -d
stop:
	docker stop hdd-rabbitmq || true
	docker rm hdd-rabbitmq || true
	docker-compose down
	
	