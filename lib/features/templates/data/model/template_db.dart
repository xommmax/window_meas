import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record_db.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record_db.dart';
import 'package:window_meas/features/editor/data/model/arch_db.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';

part 'template_db.g.dart';

@collection
class TemplateDB {
  Id? localId;
  @Index(unique: true)
  late String id;
  late DateTime date;
  late SchemeDB scheme;
  @Enumerated(EnumType.name)
  @Default(TemplateType.scheme)
  late TemplateType type;
}
