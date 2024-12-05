#!/bin/bash
# Zabbixから件名とメッセージ内容を受け取るシェルスクリプト

source .env

SUBJECT=$1  # Zabbixから渡される件名
MESSAGE=$2  # Zabbixから渡されるメッセージ内容

# LINEのメッセージ送信APIを呼び出す
curl -X POST https://api.line.me/v2/bot/message/broadcast \
-H 'Content-Type: application/json' \
-H "Authorization: Bearer ${ACCESS_TOKEN}" \
-d "{
      \"messages\": [
        {
          \"type\": \"text\",
          \"text\": \"[${SUBJECT}]\n${MESSAGE}\"
        }
      ]
    }"
