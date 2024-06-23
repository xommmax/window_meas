import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum RubberColor implements ParamEnum {
  none,
  black,
  gray,
  caramel;

  @override
  String get localizedName => switch (this) {
        RubberColor.black => Localization.l10n.rubberColorBlack,
        RubberColor.gray => Localization.l10n.rubberColorGray,
        RubberColor.caramel => Localization.l10n.rubberColorCaramel,
        RubberColor.none => Localization.l10n.none,
      };
}
