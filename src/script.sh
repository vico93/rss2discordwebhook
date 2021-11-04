#!/bin/bash

# Chamar o script dessa forma: ./script.sh RSS_URL WEBHOOK_URL USERNAME AVATAR_URL INTERVALO_SEGUNDOS

while IFS="|" read -r rec_column1 rec_column2
do
	./discord.sh --webhook-url=$2 --username $3 --avatar $4 --text "**$rec_column1**\n🔗 $rec_column2"
	echo "[INFO] Novo feed encontrado: $rec_column1 - Link: $rec_column2"
	# Para evitar rate limit
	sleep 1
done < <(rsstail -i $5 --format '%(title)s|%(link)s\n' -u $1  -n 0 -r)