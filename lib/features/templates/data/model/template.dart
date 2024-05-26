import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/templates/data/model/template_db.dart';

part 'template.freezed.dart';

@freezed
class Template with _$Template {
  const Template._();

  const factory Template({
    int? id,
    required DateTime date,
    required List<Line> lines,
    required List<Segment> segments,
  }) = _Template;

  TemplateDB toDB() => TemplateDB()
    ..id = id
    ..date = date
    ..lines = lines.map((e) => e.toDB()).toList()
    ..segments = segments.map((e) => e.toDB()).toList();

  static Template fromDB(TemplateDB db) => Template(
        id: db.id,
        date: db.date,
        lines: db.lines.map((e) => LineExt.fromDB(e)).toList(),
        segments: db.segments.map((e) => Segment.fromDB(e)).toList(),
      );
}
