  
FROM mdillon/postgis:9.6-alpine
# FROM bash:4.4

WORKDIR /app


COPY lib/alaska-data/shapefiles /app

ADD Dockerfiles/db/import.sh /docker-entrypoint-initdb.d
