import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum WindowsillType implements ParamEnum {
  none,
  pvc,
  wooden,
  stone;

  @override
  String get localizedName => switch (this) {
        WindowsillType.none => Localization.l10n.none,
        WindowsillType.pvc => Localization.l10n.windowsillTypePvc,
        WindowsillType.wooden => Localization.l10n.windowsillTypeWooden,
        WindowsillType.stone => Localization.l10n.windowsillTypeStone,
      };
}
