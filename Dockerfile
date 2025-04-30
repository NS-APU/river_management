FROM python:3.9-slim

# 必要なパッケージのインストール
RUN pip install psycopg2-binary

# スクリプトのコピー
COPY get_water_level.py /usr/local/bin/get_water_level.py

# スクリプトの実行
CMD ["python3", "/usr/local/bin/get_water_level.py"]


FROM postgres:latest

# ODBC 関連ツールをインストール
RUN apt-get update && apt-get install -y unixodbc unixodbc-bin

# ODBC 設定ファイルを追加
COPY .odbc.ini /etc/odbc.ini
COPY .odbcinst.ini /etc/odbcinst.ini
