import psycopg2
import sys

# PostgreSQL データベースの接続情報
DB_HOST = 'postgres'
DB_PORT = '5432'
DB_NAME = 'water_level'
DB_USER = 'zabbix'
DB_PASSWORD = 'zabbix'

# PostgreSQL データベースに接続
conn = psycopg2.connect(
    host=DB_HOST,
    port=DB_PORT,
    dbname=DB_NAME,
    user=DB_USER,
    password=DB_PASSWORD
)
cursor = conn.cursor()

# 水位データの取得
cursor.execute("SELECT water_level FROM water_levels ORDER BY measurement_time DESC LIMIT 1;")
result = cursor.fetchone()

# データの出力
if result:
    print(result[0])
else:
    print('No data found')

# クローズ
cursor.close()
conn.close()
