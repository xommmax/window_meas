import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/editor/data/model/line_db.dart';
import 'package:window_meas/features/editor/data/model/polygon_db.dart';
import 'package:window_meas/features/editor/data/model/segment_db.dart';

part 'scheme_db.g.dart';

@embedded
class SchemeDB {
  @Default([])
  late List<LineDB> lines;
  @Default([])
  late List<SizeSegmentDB> sizeSegments;
  @Default([])
  late List<PolygonDB> polygons;
}
