  
#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER dart;
    CREATE DATABASE dart_test;
    ALTER USER dart with password 'mypassw0rd';
    ALTER user dart with SUPERUSER;
GRANT ALL PRIVILEGES ON DATABASE dart_test TO dart;
EOSQL

psql -U dart -w 'mypassw0rd'  -d dart_test -c 'CREATE EXTENSION POSTGIS'
# mkdir /app/sql-out/

for entry in /app/*.shp
do
    
#	ogr2ogr -f "PostgreSQL" "PG:host=localhost user=dart dbname=dart_test password=mypassw0rd" "$entry" -lco GEOMETRY_NAME=geom -lco FID=gid -lco PRECISION=no -nlt PROMOTE_TO_MULTI -nln new_layername -overwrite
	tablename="$(basename -- $entry)"
	name=$(echo "$tablename" | cut -f 1 -d '.')
	echo "$name"
	shp2pgsql -I -s 4326 "$entry" dart_test name > /tmp/"$name.sql" 
	PGPASSWORD='mypassw0rd' psql -q -U dart -d dart_test -f /tmp/"$name.sql"
done
