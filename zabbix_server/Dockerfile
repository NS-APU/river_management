FROM zabbix/zabbix-server-pgsql:ubuntu-6.4-latest

# 環境変数の設定
ENV DB_SERVER_HOST=postgres \
    DB_SERVER_PORT=5432 \
    POSTGRES_USER=zabbix \
    POSTGRES_PASSWORD=zabbix \
    POSTGRES_DB=zabbix

COPY ./zabbix_server.conf /etc/zabbix/
