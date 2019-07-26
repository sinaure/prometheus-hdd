build:
	docker build -t easyglobalmarket/mqtt-exporter ./mqtt-exporter
push:
	docker push easyglobalmarket/mqtt-exporter	
run:
	docker network create --driver bridge egm || true
	#docker run -d --name hdd-rabbitmq  -p 15672:15672 -p 5672:5672 -p 1883:1883 --net=egm  egm/rabbitmq
	#docker exec hdd-rabbitmq /docker-rabbitmq/init.sh
	#postgres have to be started before 
	docker run --rm -d --name prometheus_postgres -e "POSTGRES_PASSWORD=postgres" -e "POSTGRES_USER=postgres" -p 5432:5432  --net=egm  timescale/pg_prometheus:latest
	sleep 60
	#./init.sh
	docker-compose up 
	#docker-compose up -d
stop:
	docker stop prometheus_postgres || true
	docker rm prometheus_postgres || true
	docker-compose down
	
	