  
# FROM mdillon/postgis:9.6-alpine
FROM bash:4.4

COPY lib/alaska-data/shapefiles /tmp


ADD Dockerfiles/db/import.sh /docker-entrypoint-initdb.d