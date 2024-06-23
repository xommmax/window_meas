import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum FlatStatus implements ParamEnum {
  none,
  repair,
  living;

  @override
  get localizedName => switch (this) {
        FlatStatus.repair => Localization.l10n.flatStatusRepair,
        FlatStatus.living => Localization.l10n.flatStatusLiving,
        FlatStatus.none => Localization.l10n.none,
      };
}
