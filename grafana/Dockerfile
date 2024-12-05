FROM grafana/grafana:latest

COPY ./grafana.ini /etc/grafana/grafana.ini
COPY ./provisioning /etc/grafana/provisioning
RUN grafana-cli plugins install alexanderzobnin-zabbix-app
