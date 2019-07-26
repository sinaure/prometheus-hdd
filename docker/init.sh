#!/bin/sh
i=0
substring="accepting connections"
while [ $i -lt 100 ]
	do
		sleep 5
	    response= echo "$(docker exec prometheus_postgres sh -c "pg_isready -h localhost -p 5432")"
	    echo $response
	    ((i++))
	    if [[ "$response" =~ "$substring" ]]; then
		  echo "response ok!"
		  break
		fi
	done