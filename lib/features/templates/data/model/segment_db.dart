import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';

part 'segment_db.g.dart';

@embedded
class SegmentDB {
  @Default(0)
  late double x1;
  @Default(0)
  late double y1;
  @Default(0)
  late double x2;
  @Default(0)
  late double y2;
  late String? size;
  @Enumerated(EnumType.name)
  @Default(SegmentDirection.horizontal)
  late SegmentDirection direction;
  @Default(false)
  late bool isMain;
  @Default(0)
  late int index;
}
