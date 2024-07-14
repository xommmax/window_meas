import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum WindowsillConnector implements ParamEnum {
  none,
  d45,
  d90;

  @override
  String get localizedName => switch (this) {
        WindowsillConnector.none => Localization.l10n.none,
        WindowsillConnector.d45 => '45°',
        WindowsillConnector.d90 => '90°',
      };
}