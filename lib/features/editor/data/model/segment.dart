import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';

part 'segment.freezed.dart';

@freezed
class SizeSegment with _$SizeSegment {
  const SizeSegment._();

  const factory SizeSegment({
    required Offset p1,
    required Offset p2,
    required String? size,
    required SegmentDirection direction,
    required bool isMain,
    required int index,
  }) = _SizeSegment;

  SizeSegmentDB toDB() => SizeSegmentDB()
    ..x1 = p1.dx
    ..y1 = p1.dy
    ..x2 = p2.dx
    ..y2 = p2.dy
    ..size = size
    ..direction = direction
    ..isMain = isMain
    ..index = index;

  factory SizeSegment.fromDB(SizeSegmentDB db) => SizeSegment(
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
