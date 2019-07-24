FROM python:3.7.2-slim

LABEL maintainer="Aureliano Sinatra <sinaure@gmail.com>"


ENV INSTALL_PATH /mqtt-exporter
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

RUN apt update
RUN apt install -y python3-pytoml python3-flask git
RUN apt install -y jq 
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ADD entrypoint.sh $INSTALL_PATH
ADD config.toml $INSTALL_PATH
ADD mqtt-pushgateway.py $INSTALL_PATH

#ENTRYPOINT [ "/mqtt-exporter/entrypoint.sh" ]
CMD /mqtt-exporter/entrypoint.sh