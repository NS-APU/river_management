import psycopg2
from datetime import datetime
import random  # 例としてランダムなデータを生成
import time

# データベース接続設定
conn = psycopg2.connect(
    dbname='water_level',
    user='zabbix',
    password='zabbix',
    host='localhost',
    port='5432',
    sslmode='disable'  # SSLを無効にする
)
cur = conn.cursor()
try:
    while True:
        # データ収集（ここではランダムな水位データを生成）
        water_level = round(random.uniform(0.0, 100.0), 2)  # 0.0から5.0の間でランダムな水位

        #現在の時刻を取得
        observation_time = datetime.now()

        # データベースに挿入
        cur.execute("""
            INSERT INTO water_levels (observation_time, water_level)
            VALUES (%s, %s);
        """, (observation_time, water_level))

        # コミットして変更を保存
        conn.commit()

        time.sleep(300)

finally:
    # クローズ
    cur.close()
    conn.close()
