import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/db/model/expander_option_db.dart';
import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

part 'expander_option.freezed.dart';

@freezed
class ExpanderOption with _$ExpanderOption {
  const ExpanderOption._();

  const factory ExpanderOption({
    required bool rightEnabled,
    required ExpanderWidth rightWidth,
    required String rightLength,
    required String rightAmount,
    required bool leftEnabled,
    required ExpanderWidth leftWidth,
    required String leftLength,
    required String leftAmount,
    required bool topEnabled,
    required ExpanderWidth topWidth,
    required String topLength,
    required String topAmount,
    required bool bottomEnabled,
    required ExpanderWidth bottomWidth,
    required String bottomLength,
    required String bottomAmount,
  }) = _ExpanderOption;

  factory ExpanderOption.initial() => const ExpanderOption(
        rightEnabled: false,
        rightWidth: ExpanderWidth.none,
        rightLength: '',
        rightAmount: '',
        leftEnabled: false,
        leftWidth: ExpanderWidth.none,
        leftLength: '',
        leftAmount: '',
        topEnabled: false,
        topWidth: ExpanderWidth.none,
        topLength: '',
        topAmount: '',
        bottomEnabled: false,
        bottomWidth: ExpanderWidth.none,
        bottomLength: '',
        bottomAmount: '',
      );

  ExpanderOptionDB toDB() => ExpanderOptionDB()
    ..rightEnabled = rightEnabled
    ..rightWidth = rightWidth
    ..rightLength = rightLength
    ..rightAmount = rightAmount
    ..leftEnabled = leftEnabled
    ..leftWidth = leftWidth
    ..leftLength = leftLength
    ..leftAmount = leftAmount
    ..topEnabled = topEnabled
    ..topWidth = topWidth
    ..topLength = topLength
    ..topAmount = topAmount
    ..bottomEnabled = bottomEnabled
    ..bottomWidth = bottomWidth
    ..bottomLength = bottomLength
    ..bottomAmount = bottomAmount;

  static ExpanderOption fromDB(ExpanderOptionDB db) => ExpanderOption(
        rightEnabled: db.rightEnabled,
        rightWidth: db.rightWidth,
        rightLength: db.rightLength,
        rightAmount: db.rightAmount,
        leftEnabled: db.leftEnabled,
        leftWidth: db.leftWidth,
        leftLength: db.leftLength,
        leftAmount: db.leftAmount,
        topEnabled: db.topEnabled,
        topWidth: db.topWidth,
        topLength: db.topLength,
        topAmount: db.topAmount,
        bottomEnabled: db.bottomEnabled,
        bottomWidth: db.bottomWidth,
        bottomLength: db.bottomLength,
        bottomAmount: db.bottomAmount,
      );
}

enum ExpanderWidth implements ParamEnum {
  none,
  w20,
  w35,
  w40,
  w60,
  w100;

  @override
  String get localizedName => switch (this) {
        ExpanderWidth.none => Localization.l10n.none,
        ExpanderWidth.w20 => '20',
        ExpanderWidth.w35 => '35',
        ExpanderWidth.w40 => '40',
        ExpanderWidth.w60 => '60',
        ExpanderWidth.w100 => '100',
      };
}
