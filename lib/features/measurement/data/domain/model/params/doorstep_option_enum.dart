import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum DoorstepOption implements ParamEnum {
  none,
  present,
  absent;

  @override
  get localizedName => switch (this) {
        DoorstepOption.present => Localization.l10n.doorstepOptionPresent,
        DoorstepOption.absent => Localization.l10n.doorstepOptionAbsent,
        DoorstepOption.none => Localization.l10n.none,
      };
}
