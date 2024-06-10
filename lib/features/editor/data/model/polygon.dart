import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';

part 'polygon.freezed.dart';

@freezed
class Polygon with _$Polygon {
  const Polygon._();

  const factory Polygon({
    required List<Offset> points,
  }) = _Polygon;

  PolygonDB toDB() => PolygonDB()
    ..dx = points.map((e) => e.dx).toList()
    ..dy = points.map((e) => e.dy).toList();

  static Polygon fromDB(PolygonDB db) => Polygon(
        points: List.generate(
          db.dx.length,
          (index) => Offset(db.dx[index], db.dy[index]),
        ),
      );

  @override
  operator ==(other) =>
      other is Polygon && const UnorderedIterableEquality().equals(points, other.points);

  @override
  int get hashCode => points.hashCode;
}
