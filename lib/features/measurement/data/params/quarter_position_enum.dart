import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum QuarterPosition implements ParamEnum {
  none,
  top,
  topBottom,
  topSides,
  sides,
  all;

  @override
  get localizedName => switch (this) {
        QuarterPosition.none => Localization.l10n.none,
        QuarterPosition.top => Localization.l10n.quarterPositionTop,
        QuarterPosition.topBottom => Localization.l10n.quarterPositionTopBottom,
        QuarterPosition.topSides => Localization.l10n.quarterPositionTopSides,
        QuarterPosition.sides => Localization.l10n.quarterPositionSides,
        QuarterPosition.all => Localization.l10n.quarterPositionAll,
      };
}
