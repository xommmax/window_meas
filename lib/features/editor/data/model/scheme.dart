import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/editor/data/model/arch.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record.dart';

part 'scheme.freezed.dart';

@freezed
class Scheme with _$Scheme {
  const Scheme._();

  const factory Scheme({
    required String id,
    required List<Line> lines,
    required List<SizeSegment> sizeSegments,
    required List<Polygon> polygons,
    required List<OpeningTypeRecord> openingTypes,
    required List<FillingTypeRecord> fillingTypes,
    required List<Arch> arches,
  }) = _Scheme;

  factory Scheme.initial() => Scheme(
        id: const Uuid().v4(),
        lines: [],
        sizeSegments: [],
        polygons: [],
        openingTypes: [],
        fillingTypes: [],
        arches: [],
      );

  SchemeDB toDB() => SchemeDB()
    ..id = id
    ..lines = lines.map((e) => e.toDB()).toList()
    ..sizeSegments = sizeSegments.map((e) => e.toDB()).toList()
    ..polygons = polygons.map((e) => e.toDB()).toList()
    ..openingTypes = openingTypes.map((e) => e.toDB()).toList()
    ..fillingTypes = fillingTypes.map((e) => e.toDB()).toList()
    ..arches = arches.map((e) => e.toDB()).toList();

  static Scheme fromDB(SchemeDB db) => Scheme(
        id: db.id,
        lines: db.lines.map((e) => Line.fromDB(e)).toList(),
        sizeSegments: db.sizeSegments.map((e) => SizeSegment.fromDB(e)).toList(),
        polygons: db.polygons.map((e) => Polygon.fromDB(e)).toList(),
        openingTypes: db.openingTypes.map((e) => OpeningTypeRecord.fromDB(e)).toList(),
        fillingTypes: db.fillingTypes.map((e) => FillingTypeRecord.fromDB(e)).toList(),
        arches: db.arches.map((e) => Arch.fromDB(e)).toList(),
      );

  bool get isEmpty => lines.isEmpty;
}
