import 'package:dart_jts/dart_jts.dart';

class Airport {
  final int gid, id, fkRegion;
  final double elevation;
  final String name, use;
  final Point location;

  Airport(this.gid, this.id, this.fkRegion, this.elevation, this.name, this.use,
      this.location);
}

class Lake {
  final int gid;
  final String name;
  final MultiPolygon geometry;

  Lake(this.gid, this.name, this.geometry);
}

class River {
  final int gid;
  final String codec, name, code;
  final MultiLineString geometry;

  River(this.gid, this.codec, this.name, this.code, this.geometry);
}

class BuiltUps {
  final int gid, category;
  final String name, code;
  final MultiPolygon geometry;

  BuiltUps(this.gid, this.category, this.name, this.code, this.geometry);
}

class Region {
  final int gid;
  final String name, type;
  final MultiPolygon geometry;

  Region(this.gid, this.name, this.type, this.geometry);
}
