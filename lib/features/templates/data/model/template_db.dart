import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/scheme_db.dart';

part 'template_db.g.dart';

@collection
class TemplateDB {
  Id? id;
  late DateTime date;
  late SchemeDB scheme;
}
