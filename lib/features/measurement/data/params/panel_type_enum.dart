import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum PanelType implements ParamEnum {
  none,
  sandwich,
  metallized,
  whiteOneLaminated,
  whiteTwoLaminated;

  @override
  get localizedName => switch (this) {
        PanelType.sandwich => Localization.l10n.panelTypeSandwich,
        PanelType.metallized => Localization.l10n.panelTypeMetallized,
        PanelType.whiteOneLaminated =>
          Localization.l10n.panelTypeWhiteOneLaminated,
        PanelType.whiteTwoLaminated =>
          Localization.l10n.panelTypeWhiteTwoLaminated,
        PanelType.none => Localization.l10n.none,
      };
}
