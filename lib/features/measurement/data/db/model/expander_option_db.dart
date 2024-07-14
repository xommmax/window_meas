import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander_option.dart';

part 'expander_option_db.g.dart';

@embedded
class ExpanderOptionDB {
  @Default(false)
  late bool rightEnabled;
  @Enumerated(EnumType.name)
  @Default(ExpanderWidth.none)
  late ExpanderWidth rightWidth;
  @Default('')
  late String rightLength;
  @Default('')
  late String rightAmount;
  @Default(false)
  late bool leftEnabled;
  @Enumerated(EnumType.name)
  @Default(ExpanderWidth.none)
  late ExpanderWidth leftWidth;
  @Default('')
  late String leftLength;
  @Default('')
  late String leftAmount;
  @Default(false)
  late bool topEnabled;
  @Enumerated(EnumType.name)
  @Default(ExpanderWidth.none)
  late ExpanderWidth topWidth;
  @Default('')
  late String topLength;
  @Default('')
  late String topAmount;
  @Default(false)
  late bool bottomEnabled;
  @Enumerated(EnumType.name)
  @Default(ExpanderWidth.none)
  late ExpanderWidth bottomWidth;
  @Default('')
  late String bottomLength;
  @Default('')
  late String bottomAmount;
}
