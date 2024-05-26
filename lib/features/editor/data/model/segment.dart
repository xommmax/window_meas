import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'segment.freezed.dart';

@freezed
class Segment with _$Segment {
  const factory Segment({
    required Offset p1,
    required Offset p2,
    required String? size,
    required SegmentDirection direction,
    required bool isMain,
    required int index,
  }) = _Segment;
}

enum SegmentDirection {
  horizontal,
  vertical,
}
