import 'package:window_meas/features/meas/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum StandProfile implements ParamEnum {
  none,
  regular,
  warm;

  @override
  String get localizedName => switch (this) {
        StandProfile.regular => Localization.l10n.standProfileRegular,
        StandProfile.warm => Localization.l10n.standProfileWarm,
        StandProfile.none => Localization.l10n.none,
      };
}
