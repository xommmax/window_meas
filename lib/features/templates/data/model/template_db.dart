import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record_db.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record_db.dart';
import 'package:window_meas/features/editor/data/model/arch_db.dart';

part 'template_db.g.dart';

@collection
class TemplateDB {
  Id? id;
  late DateTime date;
  late SchemeDB scheme;
}
