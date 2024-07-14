import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum AssemblyType implements ParamEnum {
  none,
  regular,
  warm;

  @override
  get localizedName => switch (this) {
        AssemblyType.none => Localization.l10n.none,
        AssemblyType.regular => Localization.l10n.assemblyRegular,
        AssemblyType.warm => Localization.l10n.assemblyWarm,
      };
}
