import 'package:alaska/alaska/alaska-db-adapter.dart';
import 'package:postgres/postgres.dart';

void main(List<String> arguments) async {
  var connection = PostgreSQLConnection(
    'localhost',
    5432,
    'alaska',
    username: 'postgres',
    password: 'Mula1000',
  );

  await connection.open();

  final askAlaska = AskAlaska(connection);

  final rivers = await askAlaska.getAlaskaRivers();
  print(rivers.length);
  // final airports = await askAlaska.getAlaskaAirports();
  final lakes = await askAlaska.getAlaskaLakes();

  // rivers.forEach((river) { 

  //   var riverLength = river.geometry.getLength();
  //   print('River ${river.name} has length of $riverLength');
  // });

  // lakes.forEach((lake) {
  //   var lakeArea = lake.geometry.getArea();
  //   var srid = lake.geometry.getSRID();
  //   print('Lake ${lake.name} has an area of $lakeArea using SRID $srid');
  // });

  // run queries and add more queries into AskAlaska
}
