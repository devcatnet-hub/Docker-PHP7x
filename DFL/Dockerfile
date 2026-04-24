FROM deathwalker66/alpine-legacy

LABEL Maintainer="CatDEV <dev.catnet@gmail.com>"

### COPY
COPY ./PRC/profile /etc/profile
COPY SCP /SCP

### [ RUN ]
### [!]: Replace \ + && with ;\
RUN set -eux ;\
### Install Runtime Packages
    apk add --no-cache \
        php7 \
        php7-mbstring \
        php7-session ;\
### User and Group
    #addgroup -g 82 -S www-data ;\
    adduser -u 82 -D -S -G www-data www-data ;\        
### Add Extra Directory to PHP Testers
    mkdir -p /usr/local/php/logs ;\
    chown -R www-data:www-data /usr/local/php/logs ;\
### Set Script Dir
    chmod +x /SCP/* ;\
### Clean [!]
    /SCP/clean.sh

### [ EXPOSE ]
EXPOSE 22 8000

### [ VOLUME ]
VOLUME ["/PHP", "/usr/local/php/logs"]

### [ ENTRYPOINT ]
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

### [ CMD ]
CMD ["/SCP/entrypoint.sh"]