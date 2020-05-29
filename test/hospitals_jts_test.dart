import 'package:hospitals_jts/alaska/alaska-db-adapter.dart';
import 'package:postgres/postgres.dart';
import 'package:test/test.dart';

void main() async {

  AskAlaska askAlaska;

  var connection = PostgreSQLConnection(
    'localhost',
    5432,
    'alaska',
    username: 'postgres',
    password: 'Mula1000',
  );
  await connection.open();

  setUp(()async {
    if(connection.isClosed){ 
      throw Exception('Cannot connect to database');
    }
    askAlaska = AskAlaska(connection);
  });

  test('PostgisEWKTParser.parseMultiLineString should parse Alaska Rivers successfully', () async{
    var results = await askAlaska.getAlaskaRivers();
    expect(results != null, true);
  });

  test('PostgisEWKTParser.parseMultiPolygon should parse Alaska Lakes', () async {
    var results = await askAlaska.getAlaskaLakes();
    expect(results.length,15);
    // results.forEach((e) => print(e.geometry));
  });

  test('PostgisEWKTParser.parsePoint should parse Alaska Airports', () async {
    var results = await askAlaska.getAlaskaAirports();
    expect(results.length, 76);
    results.forEach((e) {
      expect(e.location.SRID, 0);
    });    
  });






}
