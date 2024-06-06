import 'package:window_meas/l10n/localization.dart';

enum OpeningType {
  rotaryRight,
  rotaryLeft,
  tiltTurnRight,
  tiltTurnLeft,
  rotaryMullionRight,
  rotaryMullionLeft,
  slidingRight,
  slidingLeft,
  liftAndSlideRight,
  liftAndSlideLeft,
  retractableRight,
  retractableLeft,
  transom,
  topHung,
  midHung,
  blind;

  get localizedName => switch (this) {
        OpeningType.rotaryRight => Localization.l10n.rotaryRightOpeningType,
        OpeningType.rotaryLeft => Localization.l10n.rotaryLeftOpeningType,
        OpeningType.tiltTurnRight => Localization.l10n.tiltTurnRightOpeningType,
        OpeningType.tiltTurnLeft => Localization.l10n.tiltTurnLeftOpeningType,
        OpeningType.rotaryMullionRight => Localization.l10n.rotaryMullionRightOpeningType,
        OpeningType.rotaryMullionLeft => Localization.l10n.rotaryMullionLeftOpeningType,
        OpeningType.slidingRight => Localization.l10n.slidingRightOpeningType,
        OpeningType.slidingLeft => Localization.l10n.slidingLeftOpeningType,
        OpeningType.liftAndSlideRight => Localization.l10n.liftAndSlideRightOpeningType,
        OpeningType.liftAndSlideLeft => Localization.l10n.liftAndSlideLeftOpeningType,
        OpeningType.retractableRight => Localization.l10n.retractableRightOpeningType,
        OpeningType.retractableLeft => Localization.l10n.retractableLeftOpeningType,
        OpeningType.transom => Localization.l10n.transomOpeningType,
        OpeningType.topHung => Localization.l10n.topHungOpeningType,
        OpeningType.midHung => Localization.l10n.midHungOpeningType,
        OpeningType.blind => Localization.l10n.blindOpeningType,
      };
}
