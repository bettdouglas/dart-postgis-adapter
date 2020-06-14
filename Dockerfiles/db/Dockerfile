  
FROM mdillon/postgis:9.6-alpine

COPY lib/alaska-data/shapefiles /tmp


ADD Dockerfiles/db/import.sh /docker-entrypoint-initdb.d