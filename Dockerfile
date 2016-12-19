FROM webdevops/php-nginx:ubuntu-16.04

EXPOSE 80 443

RUN /usr/local/bin/apt-install php-pgsql\
    && /opt/docker/bin/provision run --tag bootstrap --role webdevops-nginx --role webdevops-php-nginx \
    && /opt/docker/bin/bootstrap.sh
