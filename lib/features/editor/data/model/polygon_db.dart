import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'polygon_db.g.dart';

@embedded
class PolygonDB {
  @Default([])
  late List<double> dx;
  @Default([])
  late List<double> dy;
}
