import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum ProfileSystem implements ParamEnum {
  none,
  euroline;

  @override
  get localizedName => switch (this) {
        ProfileSystem.none => Localization.l10n.none,
        ProfileSystem.euroline => Localization.l10n.profileSystemEuroline,
      };
}
