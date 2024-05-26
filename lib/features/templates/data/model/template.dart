import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';
import 'package:window_meas/features/templates/data/model/template_db.dart';

part 'template.freezed.dart';

@freezed
class Template with _$Template {
  const Template._();

  const factory Template({
    int? id,
    required DateTime date,
    required Scheme scheme,
  }) = _Template;

  TemplateDB toDB() => TemplateDB()
    ..id = id
    ..date = date
    ..scheme = scheme.toDB();

  static Template fromDB(TemplateDB db) => Template(
        id: db.id,
        date: db.date,
        scheme: Scheme.fromDB(db.scheme),
      );
}
