import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/l10n/localization.dart';

enum BuildingType implements ParamEnum {
  none,
  panel,
  brick,
  wooden,
  monolithic,
  brickMonolithic,
  block,
  blockMonolithic;

  @override
  get localizedName => switch (this) {
        BuildingType.panel => Localization.l10n.buildingTypePanel,
        BuildingType.brick => Localization.l10n.buildingTypeBrick,
        BuildingType.wooden => Localization.l10n.buildingTypeWooden,
        BuildingType.monolithic => Localization.l10n.buildingTypeMonolithic,
        BuildingType.brickMonolithic => Localization.l10n.buildingTypeBrickMonolithic,
        BuildingType.block => Localization.l10n.buildingTypeBlock,
        BuildingType.blockMonolithic => Localization.l10n.buildingTypeBlockMonolithic,
        BuildingType.none => Localization.l10n.none,
      };
}
