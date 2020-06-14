  
#!/bin/bash
# set -e

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
#     CREATE USER dart;
#     CREATE DATABASE dart_test;
#     GRANT ALL PRIVILEGES ON DATABASE dart_test TO dart;
# EOSQL

for entry in /tmp/shapefiles/*.shp
do
    echo "$entry"
done