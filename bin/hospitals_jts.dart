import 'package:dart_jts/dart_jts.dart';
import 'package:hospitals_jts/postgis_wrapper/ewkt_parser.dart';
import 'package:postgres/postgres.dart';

void main(List<String> arguments)  async {

  var connection = PostgreSQLConnection(
    'localhost',
    5432,
    'bloodapp',
    username: 'postgres',
    password: 'Mula1000',
  );

  await connection.open();

  var query = await connection.query('''
    SELECT ms.*,ST_AsEWKB(ST_SetSRID(h.geom,3819)) FROM public.missions ms
    join hospitals h on h.hospitalid = ms.hospitalid
  ''');

  var hospitals = query.map((e) => Hospital.fromRow(e));

  hospitals.forEach((e)=>print(e.geom.SRID));

}

class Hospital {
  final String uuid,userid,description,missionid,missioncontact,bloocgroup,title,hospitalid;
  final DateTime creationDate;
  final Point geom;
  final int amount;

  Hospital({
    this.userid,
    this.hospitalid,
    this.uuid,
    this.description,
    this.missionid,
    this.missioncontact,
    this.amount,
    this.bloocgroup,
    this.title,
    this.creationDate,
    this.geom
  });

  factory Hospital.fromRow(PostgreSQLResultRow rowset) {

    return Hospital(
      hospitalid: rowset[0],
      userid: rowset[1],
      description: rowset[2],
      missionid: rowset[3],
      missioncontact: rowset[4],
      amount: rowset[5],
      creationDate: rowset[6],
      bloocgroup: rowset[7],
      title: rowset[8],
      geom: _readPoint(rowset[9]),
    );
  }

  static Point _readPoint(List<int> wkt) {
    var point = PostgisEWKTParser().parsePoint(wkt);
    return point;
  }

}