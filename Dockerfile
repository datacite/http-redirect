FROM nginx:mainline-alpine
maintainer mfenner@datacite.org

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir /etc/nginx/GeoIP/ && \
    apk add --no-cache --virtual gunzip curl bash && \
    curl -fSL http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz -o GeoIP.dat.gz && \
    curl -fSL http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz -o GeoLiteCity.dat.gz && \
    gunzip GeoIP.dat.gz && \
    gunzip GeoLiteCity.dat.gz && \
    mv GeoIP.dat /etc/nginx/GeoIP/ && \
    mv GeoLiteCity.dat /etc/nginx/GeoIP/

COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
