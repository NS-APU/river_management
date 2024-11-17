#!/bin/bash
# Zabbixから件名とメッセージ内容を受け取るシェルスクリプト

ACCESS_TOKEN="ck+079memyog8u4XwATz8b50nSxhlAWESQIUofY5+K46odstCrpVzlEq9KK34IWGZjgSirdOV5XZgFIYJwAn5qBn90xVq91UF7J010tf6fxRCI/mZsE765OahLcYUcnBBLpj7yLfN2qCqMF3xjRD5QdB04t89/1O/w1cDnyilFU="  # LINE公式アカウントのアクセストークン
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
