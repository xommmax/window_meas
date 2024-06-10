import 'package:window_meas/l10n/localization.dart';

enum FillingType {
  glass,
  panel;

  get localizedName => switch (this) {
        FillingType.glass => Localization.l10n.glassUnit,
        FillingType.panel => Localization.l10n.panel,
      };
}
