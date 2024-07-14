import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum PanelThickness implements ParamEnum {
  none,
  th24,
  th32,
  th40;

  @override
  get localizedName => switch (this) {
        PanelThickness.none => Localization.l10n.none,
        PanelThickness.th24 => '24',
        PanelThickness.th32 => '32',
        PanelThickness.th40 => '40',
      };
}
