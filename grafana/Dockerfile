FROM grafana/grafana:latest

# 環境変数の設定
ENV GF_SECURITY_ADMIN_USER=admin \
    GF_SECURITY_ADMIN_PASSWORD=12345 \
    GF_INSTALL_PLUGINS=alexanderzobnin-zabbix-app \
    TZ=Asia/Tokyo

COPY ./grafana.ini /etc/grafana/grafana.ini
COPY ./provisioning /etc/grafana/provisioning

