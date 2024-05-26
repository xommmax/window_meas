import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/templates/data/model/line_db.dart';
import 'package:window_meas/features/templates/data/model/segment_db.dart';

part 'scheme_db.g.dart';

@embedded
class SchemeDB {
  @Default([])
  late List<LineDB> lines;
  @Default([])
  late List<SegmentDB> segments;
}
