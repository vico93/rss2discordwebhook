# rss2discordwebhook
Script cru para ler um feed RSS e quando receber um feed novo posta no Discord via webhooks

## Uso
- Deve instalar o [rsstail.py](https://github.com/gvalkov/rsstail.py) usando o `pip` e colocar na mesma pasta que o `script.sh` o [discord.sh](https://github.com/ChaoticWeg/discord.sh);
- Executar (ou colocar em um `.service` do systemd, não testei ainda) da seguinte forma:
```
./script.sh "https://example.org/feed.xml" "https://discord.com/api/webhooks/o_resto_voce_preenche" "Nome do Webhook" "https://example.com/my-beautiful-avatar.png"
```
