#!/bin/bash

# Chamar o script dessa forma: ./script.sh RSS_URL WEBHOOK_URL USERNAME AVATAR_URL

rsstail -i 3 --format '**%(title)s** 🔗 %(link)s\n' -u $1 -n 0 | while read -r x; do
	./discord.sh --webhook-url=$2 --username $3 --avatar $4 --text "$x"
	# echo "$x"
	sleep 1
done
