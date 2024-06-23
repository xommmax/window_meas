import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record_db.dart';

part 'filling_type_record.freezed.dart';

@freezed
class FillingTypeRecord with _$FillingTypeRecord {
  const FillingTypeRecord._();

  const factory FillingTypeRecord({
    required FillingType fillingType,
    required Polygon polygon,
  }) = _FillingTypeRecord;

  FillingTypeRecordDB toDB() => FillingTypeRecordDB()
    ..fillingType = fillingType
    ..polygon = polygon.toDB();

  static FillingTypeRecord fromDB(FillingTypeRecordDB db) => FillingTypeRecord(
        fillingType: db.fillingType,
        polygon: Polygon.fromDB(db.polygon),
      );
}
