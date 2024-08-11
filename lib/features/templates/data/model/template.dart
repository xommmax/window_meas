import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/templates/data/model/template_db.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';

part 'template.freezed.dart';

@freezed
class Template with _$Template {
  const Template._();

  const factory Template({
    int? localId,
    required String id,
    required DateTime date,
    required Scheme scheme,
    required TemplateType type,
  }) = _Template;

  TemplateDB toDB() => TemplateDB()
    ..localId = localId
    ..id = id
    ..date = date
    ..scheme = scheme.toDB()
    ..type = type;

  static Template fromDB(TemplateDB db) => Template(
        localId: db.localId,
        id: db.id,
        date: db.date,
        scheme: Scheme.fromDB(db.scheme),
        type: db.type,
      );
}
