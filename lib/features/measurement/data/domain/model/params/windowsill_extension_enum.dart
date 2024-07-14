import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum WindowsillExtension implements ParamEnum {
  none,
  short,
  offSlab;

  @override
  String get localizedName => switch (this) {
        WindowsillExtension.none => Localization.l10n.none,
        WindowsillExtension.short => Localization.l10n.windowsillExtensionShort,
        WindowsillExtension.offSlab =>
          Localization.l10n.windowsillExtensionOffSlab,
      };
}
