import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum ElevatorOptions implements ParamEnum {
  none,
  cargo,
  passenger,
  passengerAndCargo,
  absent;

  @override
  String get localizedName => switch (this) {
        ElevatorOptions.none => Localization.l10n.none,
        ElevatorOptions.cargo => Localization.l10n.elevatorOptionCargo,
        ElevatorOptions.passenger => Localization.l10n.elevatorOptionPassenger,
        ElevatorOptions.passengerAndCargo => Localization.l10n.elevatorOptionPassengerAndCargo,
        ElevatorOptions.absent => Localization.l10n.elevatorOptionAbsent,
      };
}
