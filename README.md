A sample command-line application which shows how to read geometries from postgres in dart using [postgres](https://pub.dev/packages/postgres) and [dart_jts](https://pub.dev/packages/dart_jts) and Alaska Dataset


# Steps to run locally

Requirements

* Postgres used is 12. but I bet this will work from 9.6 and above.
* postgis extension installed. Follow this link on how to install it. [postgis.net](https://postgis.net/install/). You can use Application Stack Builder to install the postgis extension

run `psql -u username -h localhost -d postgres`
* `CREATE DATABASE alaska;`
* `CREATE EXTENSION postgis;`

To run the tests, ensure you have imported the shapefiles into a database then use either QGIS or follow this [tutorial](https://postgis.net/workshops/postgis-intro/loading_data.html) and select shapefiles in `lib/alaska-data/shapefiles folder`

## Description of directories
* `lib/alaska/models` contains the alaska-dataset and models.
* `lib/postgis_wrapper` contains the parser to read geometries from Postgis to Geometries. Current implementation parses EWKB to Geometries

