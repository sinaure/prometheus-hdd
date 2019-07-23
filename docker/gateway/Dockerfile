FROM golang:1.11

LABEL maintainer="Aureliano Sinatra <sinaure@gmail.com>"

ENV PROBE "mqttgateway"

RUN git config --global http.sslVerify false
RUN go get github.com/inuits/mqttgateway

ADD init.sh /app/
ADD config.cfg /app/
RUN chmod 777 /app/init.sh
ENTRYPOINT [ "/app/init.sh" ]