build:
	docker build -t easyglobalmarket/probe-diatomic .
push:
	docker push easyglobalmarket/probe-diatomic	
run:
	docker run --name probe-diatomic --rm -e "IP=192.168.99.100" -e "PORT=1883" -e "BULK_DATA=$(bulk_data)"  easyglobalmarket/probe-diatomic	
stop:
	docker stop easyglobalmarket/probe-diatomic || true
	docker rm easyglobalmarket/probe-diatomic || true
	
	