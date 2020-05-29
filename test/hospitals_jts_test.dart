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

  test('PostgisEWKTParser.parseLineString should parse Alaska Rivers successfully', () async{
    var results = await askAlaska.getAlaskaRivers();
    expect(results != null, true);
  });

  test('PostgisEWKTParser.parseMultiPolygon should parse Alaska Lakes', () async {
    var results = await askAlaska.getAlaskaLakes();
    expect(results.length,15);
    results.forEach((e) => print(e.geometry));
  });

}
