FROM zabbix/zabbix-web-nginx-pgsql:6.4-ubuntu-latest

# 環境変数の設定
ENV DB_SERVER_HOST=postgres \
    POSTGRES_USER=zabbix \
    POSTGRES_PASSWORD=zabbix \
    POSTGRES_DB=zabbix \
    PHP_TZ=Asia/Tokyo \
    ZBX_SERVER_HOST=zabbix-server \
    ZBX_SERVER_PORT=10051
    
# フロントエンドの設定に必要なファイルをコピー
# COPY ./zabbix.conf.php /etc/zabbix/

# デフォルトのエントリーポイントを使用するため、追加のCMDは不要
