import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';

part 'filling_type_record_db.g.dart';

@embedded
class FillingTypeRecordDB {
  @Enumerated(EnumType.name)
  @Default(FillingType.glass)
  late FillingType fillingType;
  late PolygonDB polygon;
  @Default(false)
  late bool sateen;
  @Default(false)
  late bool mosquito;
  late String? text;
}
