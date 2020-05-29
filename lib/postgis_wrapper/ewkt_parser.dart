import 'package:dart_jts/dart_jts.dart';
import 'package:hospitals_jts/postgis_wrapper/geometry_parser.dart';


class EwkbFormatException implements Exception {
  final String message;

  EwkbFormatException(this.message) : super();

  @override
  String toString() {
    return 'FormatConversionException($message)';    
  }

}


class PostgisEWKTParser extends PostgisGeometryParser {

  var wkbReader = WKBReader();

  @override
  LineString parseLineString(List<int> ewkt) {
    var lineString = wkbReader.read(ewkt);
    assert(lineString is LineString,throw EwkbFormatException('$ewkt is not valid LineString. Ensure your format is EWKB & is a LineString'));
    return lineString;
  }

  @override
  MultiPolygon parseMultiPolygon(List<int> ewkt) {
    var multiPolygon = wkbReader.read(ewkt);
    assert(multiPolygon is MultiPolygon,throw EwkbFormatException('$ewkt is not valid MultiPolygon. Ensure your format is EWKB & is a MultiPolygon'));
    return multiPolygon;
  }

  @override
  Point parsePoint(List<int> ewkt) {
    var point = wkbReader.read(ewkt);
    assert(point is Point,throw EwkbFormatException('$ewkt is not valid Point. Ensure your format is EWKB & is a Point'));
    return point;
  }

  @override
  Polygon parsePolygon(List<int> ewkt) {
    var point = wkbReader.read(ewkt);
    assert(point is Polygon,throw EwkbFormatException('$ewkt is not valid Polygon. Ensure your format is EWKB & is a Polygon'));
    return point;
  }

  @override
  GeometryCollection parseGeometryCollection(List<int> ewkt) {
    var geometryCollection = wkbReader.read(ewkt);
    assert(geometryCollection is GeometryCollection,throw EwkbFormatException('$ewkt is not valid GeometryCollection. Ensure your format is EWKB & is a GeometryCollection'));
    return geometryCollection;
    }
  
    @override
    Geometry parseGeometry(List<int> ewkt) {
      var geometry = wkbReader.read(ewkt);
      assert(geometry is Geometry,throw EwkbFormatException('$ewkt is not valid Geometry. Ensure your format is EWKB & is a Geometry'));
      return geometry;
    }
  
    @override
    MultiLineString parseMultiLineString(List<int> ewkt) {
      var multiLineString = wkbReader.read(ewkt);
      assert(multiLineString is MultiLineString,throw EwkbFormatException('$ewkt is not valid MultiLineString. Ensure your format is EWKB & is a MultiLineString'));
      return multiLineString;
    }
  
    @override
    MultiPoint parseMultiPoint(List<int> ewkt) {
      var multiPoint = wkbReader.read(ewkt);
      assert(multiPoint is MultiPoint,throw EwkbFormatException('$ewkt is not valid MultiPoint. Ensure your format is EWKB & is a MultiPoint'));
      return multiPoint;  
    }

  @override
  MultiLineString readMultiCurve(List<int> ewkt) {
    var multiCurve = wkbReader.read(ewkt);
    assert(multiCurve is MultiLineString,throw EwkbFormatException('$ewkt is not valid MultiPoint. Ensure your format is EWKB & is a MultiPoint'));
    return multiCurve;  
  }
  

}