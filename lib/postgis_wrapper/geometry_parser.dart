import 'package:dart_jts/dart_jts.dart';

abstract class PostgisGeometryParser {
  Geometry parseGeometry(List<int> ewkt);
  Point parsePoint(List<int> ewkt);
  LineString parseLineString(List<int> ewkt);
  Polygon parsePolygon(List<int> ewkt);


  MultiPoint parseMultiPoint(List<int> ewkt);
  MultiLineString parseMultiLineString(List<int> ewkt);
  MultiPolygon parseMultiPolygon(List<int> ewkt);
  GeometryCollection parseGeometryCollection(List<int> ewkt);
  MultiLineString readMultiCurve(List<int> ewkt);
}

