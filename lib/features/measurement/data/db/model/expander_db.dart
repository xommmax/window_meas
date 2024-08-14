import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander.dart';

part 'expander_db.g.dart';

@embedded
class ExpanderDB {
  @Enumerated(EnumType.name)
  @Default(ExpanderSide.none)
  late ExpanderSide side;
  @Enumerated(EnumType.name)
  @Default(ExpanderWidth.none)
  late ExpanderWidth width;
  @Default('')
  late String length;
  late DateTime createdAt;
}
