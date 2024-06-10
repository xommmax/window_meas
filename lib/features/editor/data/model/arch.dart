import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/arch_db.dart';

part 'arch.freezed.dart';

@freezed
class Arch with _$Arch {
  const Arch._();

  const factory Arch(
    Offset p1,
    Offset p2,
    Offset? top,
  ) = _Arch;

  ArchDB toDB() => ArchDB()
    ..x1 = p1.dx
    ..y1 = p1.dy
    ..x2 = p2.dx
    ..y2 = p2.dy
    ..x3 = top?.dx
    ..y3 = top?.dy;

  static Arch fromDB(ArchDB db) => Arch(
        Offset(db.x1, db.y1),
        Offset(db.x2, db.y2),
        (db.x3 != null && db.y3 != null) ? Offset(db.x3!, db.y3!) : null,
      );

  @override
  bool operator ==(Object other) =>
      other is Arch &&
      ((p1 == other.p1 && p2 == other.p2) || (p1 == other.p2 && p2 == other.p1)) &&
      top == other.top;

  @override
  int get hashCode => p1.hashCode ^ p2.hashCode ^ top.hashCode;
}
