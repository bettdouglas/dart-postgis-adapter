import 'package:hospitals_jts/alaska/models/models.dart';
import 'package:hospitals_jts/postgis_wrapper/ewkt_parser.dart';
import 'package:postgres/postgres.dart';

class AskAlaska {
  final PostgreSQLConnection connection;
  final AlaskaDBMapper dbMapper = AlaskaDBMapper();

  AskAlaska(this.connection);

  Future<List<River>> getAlaskaRivers() async {
    var queryString = 'SELECT gid,f_codedesc,nam,f_code,ST_AsEWKB(geom) FROM rivers'; 
    var results = await connection.query(queryString);
    return results.map(dbMapper.mapRiverData).toList();
  }

  Future<List<Lake>> getAlaskaLakes() async {
    var queryString = 'SELECT gid,names,ST_AsEWKB(geom) from lakes';
    var results = await connection.query(queryString);
    return results.map(dbMapper.mapLakeData).toList();
  }
}

class AlaskaDBMapper {

  final pgParser = PostgisEWKTParser();

  River mapRiverData(PostgreSQLResultRow row) {
    var riverGeom = pgParser.parseMultiLineString(row[4]);
    return River(row[0], row[1], row[2], row[3],riverGeom);
  }

  Lake mapLakeData(PostgreSQLResultRow row) {
    var lakeGeom = pgParser.parseMultiPolygon(row[2]);
    return Lake(row[0], row[1], lakeGeom);
  }



}