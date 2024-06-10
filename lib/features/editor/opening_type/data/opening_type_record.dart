import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record_db.dart';

part 'opening_type_record.freezed.dart';

@freezed
class OpeningTypeRecord with _$OpeningTypeRecord {
  const OpeningTypeRecord._();

  const factory OpeningTypeRecord({
    required OpeningType openingType,
    required List<Polygon> polygons,
  }) = _OpeningTypeRecord;

  OpeningTypeRecordDB toDB() => OpeningTypeRecordDB()
    ..openingType = openingType
    ..polygons = polygons.map((e) => e.toDB()).toList();

  static OpeningTypeRecord fromDB(OpeningTypeRecordDB db) => OpeningTypeRecord(
        openingType: db.openingType,
        polygons: db.polygons.map((e) => Polygon.fromDB(e)).toList(),
      );

  bool hasSamePolygons(List<Polygon> otherPolygons) =>
      const UnorderedIterableEquality().equals(polygons, otherPolygons);
}
