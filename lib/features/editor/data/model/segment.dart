import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/templates/data/model/segment_db.dart';

part 'segment.freezed.dart';

@freezed
class Segment with _$Segment {
  const Segment._();

  const factory Segment({
    required Offset p1,
    required Offset p2,
    required String? size,
    required SegmentDirection direction,
    required bool isMain,
    required int index,
  }) = _Segment;

  SegmentDB toDB() => SegmentDB()
    ..x1 = p1.dx
    ..y1 = p1.dy
    ..x2 = p2.dx
    ..y2 = p2.dy
    ..size = size
    ..direction = direction
    ..isMain = isMain
    ..index = index;

  factory Segment.fromDB(SegmentDB db) => Segment(
        p1: Offset(db.x1, db.y1),
        p2: Offset(db.x2, db.y2),
        size: db.size,
        direction: db.direction,
        isMain: db.isMain,
        index: db.index,
      );
}

enum SegmentDirection {
  horizontal,
  vertical,
}
