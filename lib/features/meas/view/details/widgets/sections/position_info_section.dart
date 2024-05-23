import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_thickness_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_type_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/meas/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/meas/data/params/stand_profile_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_type_enum.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/photo_item.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/scheme_item.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/expander_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/items.dart';

class PositionInfoSection extends StatelessWidget {
  const PositionInfoSection(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const SchemeItem(),
            const Divider(),
            const PhotoItem(),
            const Divider(),
            TextItem(title: context.l10n.quarter),
            const Divider(),
            Subcategory(
              children: [
                InputItem(
                  title: context.l10n.size,
                  value: measurement.quarterSize,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(quarterSize: s)),
                ),
                const Divider(),
                DropdownItem<QuarterPosition>(
                  title: context.l10n.quarterPosition,
                  values: QuarterPosition.values,
                  initialValue: measurement.quarterPosition,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(quarterPosition: e)),
                ),
                const Divider(),
              ],
            ),
            SwitchItem(
              title: context.l10n.staticCalculation,
              value: measurement.staticCalculation,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(staticCalculation: b)),
            ),
            const Divider(),
            DropdownItem<ProfileSystem>(
              title: context.l10n.profileSystem,
              values: ProfileSystem.values,
              initialValue: measurement.profileSystem,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(profileSystem: e)),
            ),
            const Divider(),
            TextItem(title: context.l10n.door),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<DoorOpeningType>(
                  title: context.l10n.doorOpeningType,
                  values: DoorOpeningType.values,
                  initialValue: measurement.doorOpeningType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(doorOpeningType: e)),
                ),
                const Divider(),
                DropdownItem<DoorstepOption>(
                  title: context.l10n.doorstep,
                  values: DoorstepOption.values,
                  initialValue: measurement.doorstep,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(doorstep: e)),
                ),
                const Divider(),
                if (measurement.doorstep == DoorstepOption.present) ...[
                  DropdownItem<DoorstepType>(
                    title: context.l10n.doorstepType,
                    values: DoorstepType.values,
                    initialValue: measurement.doorstepType,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(doorstepType: e)),
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
                  value: measurement.laminationInternal,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(laminationInternal: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.laminationExternal,
                  value: measurement.laminationExternal,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(laminationExternal: s)),
                ),
                const Divider(),
              ],
            ),
            DropdownItem<RubberColor>(
              title: context.l10n.rubberColor,
              values: RubberColor.values,
              initialValue: measurement.rubberColor,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(rubberColor: e)),
            ),
            const Divider(),
            DropdownItem<StandProfile>(
              title: context.l10n.standProfile,
              values: StandProfile.values,
              initialValue: measurement.standProfile,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(standProfile: e)),
            ),
            const Divider(),
            ExpanderSection(measurement),
            InputItem(
              title: context.l10n.glassUnit,
              value: measurement.glassUnit,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(glassUnit: s)),
            ),
            const Divider(),
            TextItem(title: context.l10n.panel),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<PanelType>(
                  title: context.l10n.type,
                  values: PanelType.values,
                  initialValue: measurement.panelType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(panelType: e)),
                ),
                const Divider(),
                DropdownItem<PanelThickness>(
                  title: context.l10n.thickness,
                  values: PanelThickness.values,
                  initialValue: measurement.panelThickness,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(panelThickness: e)),
                ),
                const Divider(),
              ],
            ),
            InputItem(
              title: context.l10n.furniture,
              value: measurement.furniture,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(furniture: s)),
            ),
            const Divider(),
            TextItem(title: context.l10n.windowsill),
            const Divider(),
            Subcategory(
              children: [
                DropdownItem<WindowsillType>(
                  title: context.l10n.type,
                  values: WindowsillType.values,
                  initialValue: measurement.windowsillType,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(windowsillType: e)),
                ),
                const Divider(),
                if (measurement.windowsillType != WindowsillType.none) ...[
                  DropdownItem<WindowsillDepth>(
                    title: context.l10n.depth,
                    values: WindowsillDepth.values,
                    initialValue: measurement.windowsillDepth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(windowsillDepth: e)),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.size,
                    value: measurement.windowsillSize,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(windowsillSize: s)),
                  ),
                  const Divider(),
                  DropdownItem<WindowsillConnector>(
                    title: context.l10n.windowsillConnector,
                    values: WindowsillConnector.values,
                    initialValue: measurement.windowsillConnector,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(windowsillConnector: e)),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.color,
                    value: measurement.windowsillColor,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(windowsillColor: s)),
                  ),
                  const Divider(),
                  SwitchItem(
                    title: context.l10n.assembly,
                    value: measurement.windowsillAssembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(windowsillAssembly: b)),
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
                  value: measurement.drainageDepth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(drainageDepth: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.width,
                  value: measurement.drainageWidth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(drainageWidth: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.color,
                  value: measurement.drainageColor,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(drainageColor: s)),
                ),
                const Divider(),
                SwitchItem(
                  title: context.l10n.drainageEndCap,
                  value: measurement.drainageEndCap,
                  onChanged: (b) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(drainageEndCap: b)),
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
                  value: measurement.canopyType,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(canopyType: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.size,
                  value: measurement.canopySize,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(canopySize: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.color,
                  value: measurement.canopyColor,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(canopyColor: s)),
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
                  value: measurement.slopeDepth,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slopeDepth: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.length,
                  value: measurement.slopeLength,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slopeLength: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.quantity,
                  value: measurement.slopeQuantity,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(
                          measurement.copyWith(slopeQuantity: s)),
                ),
                const Divider(),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
