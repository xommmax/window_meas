import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum DoorOpeningType implements ParamEnum {
  none,
  inward,
  outward;

  @override
  String get localizedName => switch (this) {
        DoorOpeningType.inward => Localization.l10n.doorOpeningTypeInward,
        DoorOpeningType.outward => Localization.l10n.doorOpeningTypeOutward,
        DoorOpeningType.none => Localization.l10n.none,
      };
}
