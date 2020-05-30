import 'package:hospitals_jts/alaska/models/models.dart';
import 'package:hospitals_jts/postgis_wrapper/ewkt_parser.dart';
import 'package:postgres/postgres.dart';
import 'package:dart_jts/dart_jts.dart';

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

  Future<List<Airport>> getAlaskaAirports() async {
    var queryString = 'SELECT gid,id,fk_region,elev::REAL,name,use,ST_AsEWKB(geom) FROM airports';
    var results = await connection.query(queryString);
    return results.map(dbMapper.mapAirportData).toList();
  }

  Future<bool> insertGeom(Geometry geom) async {
    var ewkt = WKBWriter().write(geom);
    print(ewkt.toString());
    var statement = 'INSERT INTO geoms(geom) values(@wkb)';
    try {
      await connection.execute(statement,substitutionValues: {
        'wkb' : ewkt
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
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

  Airport mapAirportData(PostgreSQLResultRow row) {
    var airportLocation = pgParser.parsePoint(row[6]);
    return Airport(row[0],row[1],row[2],row[3],row[4],row[5],airportLocation);
  }


}