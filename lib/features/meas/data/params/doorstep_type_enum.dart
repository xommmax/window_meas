import 'package:window_meas/features/meas/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum DoorstepType implements ParamEnum {
  none,
  frame,
  aluminumLow,
  aluminumHigh;

  @override
  get localizedName => switch (this) {
        DoorstepType.frame => Localization.l10n.doorstepTypeFrame,
        DoorstepType.aluminumLow => Localization.l10n.doorstepTypeAluminumLow,
        DoorstepType.aluminumHigh => Localization.l10n.doorstepTypeAluminumHigh,
        DoorstepType.none => Localization.l10n.none,
      };
}
