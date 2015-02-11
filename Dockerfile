
FROM debian:latest
MAINTAINER polohb <polohb@gmail.com>



RUN apt-get update -y \
    && apt-get install -y build-essential libpcre3 libpcre3-dev libssl-dev curl unzip


ENV NGINX_V nginx-1.7.10


RUN mkdir -p /opt/nginx/ \
    && cd /opt/nginx \
    && curl --fail --silent --location --retry 3 http://nginx.org/download/${NGINX_V}.tar.gz | gunzip | tar -x   \
    && curl -O --fail --silent --location --retry 3 https://github.com/arut/nginx-rtmp-module/archive/master.zip \
    && unzip  master.zip \
    && rm master.zip \
    && cd ${NGINX_V} \
    && ./configure --add-module=../nginx-rtmp-module-master \
    && make \
    && make install 

ADD ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 1935
 
CMD /usr/local/nginx/sbin/nginx
    
    
