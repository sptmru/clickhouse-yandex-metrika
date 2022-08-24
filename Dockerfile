FROM python:2.7

RUN apt-get update
RUN apt-get -y install git

WORKDIR /
RUN git clone https://github.com/yndx-metrika/logs_api_integration.git 

WORKDIR /logs_api_integration
COPY config.json /logs_api_integration/configs
RUN pip install requests

CMD python metrica_logs_api.py -mode regular -source visits && python metrica_logs_api.py -mode regular -source hits