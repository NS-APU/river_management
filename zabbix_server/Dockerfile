FROM zabbix/zabbix-server-pgsql:ubuntu-6.4-latest

COPY ./zabbix_server.conf /etc/zabbix/

USER root
RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y unixodbc unixodbc-dev
RUN apt-get install -y odbc-postgresql
USER 1997

COPY ./.odbc.ini /etc/odbc.ini
COPY ./.odbcinst.ini /etc/odbcinst.ini
