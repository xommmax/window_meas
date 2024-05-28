import 'dart:ui';

import 'package:window_meas/features/templates/data/model/line_db.dart';

typedef Line = (Offset, Offset);

enum Direction {
  up,
  down,
  left,
  right,
}

extension LineExt on Line {
  LineDB toDB() => LineDB()
    ..x1 = $1.dx
    ..y1 = $1.dy
    ..x2 = $2.dx
    ..y2 = $2.dy;

  static Line fromDB(LineDB db) => (Offset(db.x1, db.y1), Offset(db.x2, db.y2));
}
