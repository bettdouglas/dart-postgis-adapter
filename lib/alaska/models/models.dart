import 'package:dart_jts/dart_jts.dart';

<<<<<<< HEAD
class GeometricWithCentroid {
  Point _center;

  GeometricWithCentroid(Geometry geometry) {
    _center = geometry.getCentroid();
  }

  Point get center => _center;
}

class Airport extends GeometricWithCentroid {
=======
class Airport {
>>>>>>> origin/master
  final int gid, id, fkRegion;
  final double elevation;
  final String name, use;
  final Point location;

  Airport(this.gid, this.id, this.fkRegion, this.elevation, this.name, this.use,
<<<<<<< HEAD
      this.location) : super(location);
}

class Lake extends GeometricWithCentroid {
=======
      this.location);
}

class Lake {
>>>>>>> origin/master
  final int gid;
  final String name;
  final MultiPolygon geometry;

<<<<<<< HEAD
  Lake(this.gid, this.name, this.geometry) : super(geometry);
}

class River extends GeometricWithCentroid {
=======
  Lake(this.gid, this.name, this.geometry);
}

class River {
>>>>>>> origin/master
  final int gid;
  final String codec, name, code;
  final MultiLineString geometry;

<<<<<<< HEAD
  River(this.gid, this.codec, this.name, this.code, this.geometry) : super(geometry);
}

class BuiltUps extends GeometricWithCentroid {
=======
  River(this.gid, this.codec, this.name, this.code, this.geometry);
}

class BuiltUps {
>>>>>>> origin/master
  final int gid, category;
  final String name, code;
  final MultiPolygon geometry;

<<<<<<< HEAD
  BuiltUps(this.gid, this.category, this.name, this.code, this.geometry) : super(geometry);
}

class Region extends GeometricWithCentroid {
=======
  BuiltUps(this.gid, this.category, this.name, this.code, this.geometry);
}

class Region {
>>>>>>> origin/master
  final int gid;
  final String name, type;
  final MultiPolygon geometry;

<<<<<<< HEAD
  Region(this.gid, this.name, this.type, this.geometry) : super(geometry);
=======
  Region(this.gid, this.name, this.type, this.geometry);
>>>>>>> origin/master
}
