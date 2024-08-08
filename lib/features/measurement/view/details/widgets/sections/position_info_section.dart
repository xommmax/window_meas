import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/door_opening_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_option_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/doorstep_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_thickness_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/panel_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/quarter_position_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/rubber_color_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/stand_profile_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/glass_unit.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/photo_item.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/scheme_item.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/expander_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_cubit.dart';
import 'package:window_meas/features/profile/settings/cubit/settings_state.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';

class PositionInfoSection extends StatelessWidget {
  const PositionInfoSection(
    this.position, {
    super.key,
  });

  final Position position;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SchemeItem(position),
                const Divider(),
                InputItem(
                  title: context.l10n.schemeComment,
                  value: position.schemeComment,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(schemeComment: s)),
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                ),
                const Divider(),
                PhotoItem(position),
              ],
            ),
            const Divider(),
            TextItem(title: context.l10n.quarter),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.size,
                  value: position.quarterSize,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(quarterSize: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                DropdownItem<QuarterPosition>(
                  title: context.l10n.quarterPosition,
                  values: QuarterPosition.values,
                  initialValue: position.quarterPosition,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(quarterPosition: e)),
                ),
                const Divider(),
              ],
            ),
            SwitchItem(
              title: context.l10n.staticCalculation,
              value: position.staticCalculation,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(staticCalculation: b)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.profileSystem,
              value: position.profileSystem,
              onChanged: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(profileSystem: e)),
            ),
            const Divider(),
            TextItem(title: context.l10n.door),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<DoorOpeningType>(
                  title: context.l10n.doorOpeningType,
                  values: DoorOpeningType.values,
                  initialValue: position.doorOpeningType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(doorOpeningType: e)),
                ),
                const Divider(),
                DropdownItem<DoorstepOption>(
                  title: context.l10n.doorstep,
                  values: DoorstepOption.values,
                  initialValue: position.doorstep,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(doorstep: e)),
                ),
                const Divider(),
                if (position.doorstep == DoorstepOption.present) ...[
                  DropdownItem<DoorstepType>(
                    title: context.l10n.doorstepType,
                    values: DoorstepType.values,
                    initialValue: position.doorstepType,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(doorstepType: e)),
                  ),
                  const Divider(),
                ],
              ],
            ),
            TextItem(title: context.l10n.lamination),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.laminationInternal,
                  value: position.laminationInternal,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(laminationInternal: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.laminationExternal,
                  value: position.laminationExternal,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(laminationExternal: s)),
                ),
                const Divider(),
              ],
            ),
            DropdownItem<RubberColor>(
              title: context.l10n.rubberColor,
              values: RubberColor.values,
              initialValue: position.rubberColor,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(rubberColor: e)),
            ),
            const Divider(),
            DropdownItem<StandProfile>(
              title: context.l10n.standProfile,
              values: StandProfile.values,
              initialValue: position.standProfile,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(standProfile: e)),
            ),
            const Divider(),
            ExpanderSection(position),
            GlassUnitItem(
              title: context.l10n.glassUnit,
              value: position.glassUnit,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(glassUnit: s)),
            ),
            const Divider(),
            TextItem(title: context.l10n.panel),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<PanelType>(
                  title: context.l10n.type,
                  values: PanelType.values,
                  initialValue: position.panelType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(panelType: e)),
                ),
                const Divider(),
                DropdownItem<PanelThickness>(
                  title: context.l10n.thickness,
                  values: PanelThickness.values,
                  initialValue: position.panelThickness,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(panelThickness: e)),
                ),
                const Divider(),
              ],
            ),
            InputItem(
              title: context.l10n.furniture,
              value: position.furniture,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(furniture: s)),
            ),
            const Divider(),
            TextItem(title: context.l10n.windowsill),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<WindowsillType>(
                  title: context.l10n.type,
                  values: WindowsillType.values,
                  initialValue: position.windowsillType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(windowsillType: e)),
                ),
                const Divider(),
                if (position.windowsillType != WindowsillType.none) ...[
                  DropdownItem<WindowsillDepth>(
                    title: context.l10n.depth,
                    values: WindowsillDepth.values,
                    initialValue: position.windowsillDepth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(windowsillDepth: e)),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.size,
                    value: position.windowsillSize,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(windowsillSize: s)),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  DropdownItem<WindowsillConnector>(
                    title: context.l10n.windowsillConnector,
                    values: WindowsillConnector.values,
                    initialValue: position.windowsillConnector,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(windowsillConnector: e)),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.color,
                    value: position.windowsillColor,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(windowsillColor: s)),
                  ),
                  const Divider(),
                  SwitchItem(
                    title: context.l10n.assembly,
                    value: position.windowsillAssembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updatePosition(position.copyWith(windowsillAssembly: b)),
                  ),
                  const Divider(),
                ],
              ],
            ),
            TextItem(title: context.l10n.drainage),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.depth,
                  value: position.drainageDepth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(drainageDepth: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.width,
                  value: position.drainageWidth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(drainageWidth: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.color,
                  value: position.drainageColor,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(drainageColor: s)),
                ),
                const Divider(),
                SwitchItem(
                  title: context.l10n.drainageEndCap,
                  value: position.drainageEndCap,
                  onChanged: (b) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(drainageEndCap: b)),
                ),
                const Divider(),
              ],
            ),
            TextItem(title: context.l10n.canopy),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.type,
                  value: position.canopyType,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(canopyType: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.size,
                  value: position.canopySize,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(canopySize: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.color,
                  value: position.canopyColor,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(canopyColor: s)),
                ),
                const Divider(),
              ],
            ),
            TextItem(title: context.l10n.slope),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.depth,
                  value: position.slopeDepth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(slopeDepth: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.length,
                  value: position.slopeLength,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(slopeLength: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.quantity,
                  value: position.slopeQuantity,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updatePosition(position.copyWith(slopeQuantity: s)),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            const Divider(),
            InputItem(
              title: context.l10n.positionComment,
              value: position.positionComment,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updatePosition(position.copyWith(positionComment: s)),
              maxLines: 3,
              keyboardType: TextInputType.multiline,
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
