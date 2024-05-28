import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';

part 'scheme.freezed.dart';

@freezed
class Scheme with _$Scheme {
  const Scheme._();

  const factory Scheme({
    required List<Line> lines,
    required List<SizeSegment> sizeSegments,
    required List<Polygon> polygons,
  }) = _Scheme;

  factory Scheme.initial() => const Scheme(
        lines: [],
        sizeSegments: [],
        polygons: [],
      );

  SchemeDB toDB() => SchemeDB()
    ..lines = lines.map((e) => e.toDB()).toList()
    ..sizeSegments = sizeSegments.map((e) => e.toDB()).toList()
    ..polygons = polygons.map((e) => e.toDB()).toList();

  static Scheme fromDB(SchemeDB db) => Scheme(
        lines: db.lines.map((e) => Line.fromDB(e)).toList(),
        sizeSegments: db.sizeSegments.map((e) => SizeSegment.fromDB(e)).toList(),
        polygons: db.polygons.map((e) => Polygon.fromDB(e)).toList(),
      );

  bool get isEmpty => lines.isEmpty;
}
