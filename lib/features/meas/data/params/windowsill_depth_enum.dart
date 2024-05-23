import 'package:window_meas/features/meas/data/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum WindowsillDepth implements ParamEnum {
  none,
  d100,
  d150,
  d200,
  d250,
  d300,
  d350,
  d400,
  d450,
  d500,
  d550,
  d600,
  d650,
  d700;

  @override
  String get localizedName => switch (this) {
        WindowsillDepth.none => Localization.l10n.none,
        WindowsillDepth.d100 => '100',
        WindowsillDepth.d150 => '150',
        WindowsillDepth.d200 => '200',
        WindowsillDepth.d250 => '250',
        WindowsillDepth.d300 => '300',
        WindowsillDepth.d350 => '350',
        WindowsillDepth.d400 => '400',
        WindowsillDepth.d450 => '450',
        WindowsillDepth.d500 => '500',
        WindowsillDepth.d550 => '550',
        WindowsillDepth.d600 => '600',
        WindowsillDepth.d650 => '650',
        WindowsillDepth.d700 => '700',
      };
}
