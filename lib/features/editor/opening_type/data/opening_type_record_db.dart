import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';

part 'opening_type_record_db.g.dart';

@embedded
class OpeningTypeRecordDB {
  @Enumerated(EnumType.name)
  @Default(OpeningType.blind)
  late OpeningType openingType;
  @Default([])
  late List<PolygonDB> polygons;
}
