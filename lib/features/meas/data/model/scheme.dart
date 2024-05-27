import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/meas/data/model/scheme_db.dart';

part 'scheme.freezed.dart';

@freezed
class Scheme with _$Scheme {
  const Scheme._();

  const factory Scheme({
    required List<Line> lines,
    required List<Segment> segments,
  }) = _Scheme;

  factory Scheme.initial() => const Scheme(
        lines: [],
        segments: [],
      );

  SchemeDB toDB() => SchemeDB()
    ..lines = lines.map((e) => e.toDB()).toList()
    ..segments = segments.map((e) => e.toDB()).toList();

  static Scheme fromDB(SchemeDB db) => Scheme(
        lines: db.lines.map((e) => LineExt.fromDB(e)).toList(),
        segments: db.segments.map((e) => Segment.fromDB(e)).toList(),
      );

  bool get isEmpty => lines.isEmpty;
}
