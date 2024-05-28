import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';

part 'line.freezed.dart';

@freezed
class Line with _$Line {
  const Line._();

  const factory Line(
    Offset p1,
    Offset p2,
  ) = _Line;

  LineDB toDB() => LineDB()
    ..x1 = p1.dx
    ..y1 = p1.dy
    ..x2 = p2.dx
    ..y2 = p2.dy;

  static Line fromDB(LineDB db) => Line(
        Offset(db.x1, db.y1),
        Offset(db.x2, db.y2),
      );

  @override
  bool operator ==(Object other) =>
      other is Line && ((p1 == other.p1 && p2 == other.p2) || (p1 == other.p2 && p2 == other.p1));

  @override
  int get hashCode => p1.hashCode ^ p2.hashCode;
}
