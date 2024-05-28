import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'line_db.g.dart';

@embedded
class LineDB {
  @Default(0)
  late double x1;
  @Default(0)
  late double y1;
  @Default(0)
  late double x2;
  @Default(0)
  late double y2;
}
