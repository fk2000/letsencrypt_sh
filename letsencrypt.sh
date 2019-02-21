#!/bin/sh

#証明書のドメイン（,区切りで複数のドメインも指定可能）
DOMAIN=<YOUR DOMAIN>

#ドキュメントルート（上のドメインで接続可能である必要がある）
WEBROOT=<YOUR DOCUMENTROOT>

#メールアドレス（トラブル時にメールが届く）
EMAIL=<YOUR MAIL>

/usr/local/certbot/certbot-auto certonly -m $EMAIL /
--agree-tos --non-interactive $* /
--webroot -w $WEBROOT -d $DOMAIN

