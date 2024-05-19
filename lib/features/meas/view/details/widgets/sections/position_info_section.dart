import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/meas/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/meas/data/params/stand_profile_enum.dart';
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
                  title: context.l10n.quarterSize,
                  value: measurement.quarterSize,
                  onChanged: (s) =>
                      context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(quarterSize: s)),
                ),
                const Divider(),
                DropdownItem<QuarterPosition>(
                  title: context.l10n.quarterPosition,
                  values: QuarterPosition.values,
                  initialValue: measurement.quarterPosition,
                  onSelected: (e) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(quarterPosition: e)),
                ),
                const Divider(),
              ],
            ),
            SwitchItem(
              title: context.l10n.staticCalculation,
              value: measurement.staticCalculation,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(staticCalculation: b)),
            ),
            const Divider(),
            DropdownItem<ProfileSystem>(
              title: context.l10n.profileSystem,
              values: ProfileSystem.values,
              initialValue: measurement.profileSystem,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(profileSystem: e)),
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
                      .updateMeasurement(measurement.copyWith(doorOpeningType: e)),
                ),
                const Divider(),
                DropdownItem<DoorstepOption>(
                  title: context.l10n.doorstep,
                  values: DoorstepOption.values,
                  initialValue: measurement.doorstep,
                  onSelected: (e) =>
                      context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(doorstep: e)),
                ),
                const Divider(),
                if (measurement.doorstep == DoorstepOption.present) ...[
                  DropdownItem<DoorstepType>(
                    title: context.l10n.doorstepType,
                    values: DoorstepType.values,
                    initialValue: measurement.doorstepType,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(doorstepType: e)),
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
                      .updateMeasurement(measurement.copyWith(laminationInternal: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.laminationExternal,
                  value: measurement.laminationExternal,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(laminationExternal: s)),
                ),
                const Divider(),
              ],
            ),
            DropdownItem<RubberColor>(
              title: context.l10n.rubberColor,
              values: RubberColor.values,
              initialValue: measurement.rubberColor,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(rubberColor: e)),
            ),
            const Divider(),
            DropdownItem<StandProfile>(
              title: context.l10n.standProfile,
              values: StandProfile.values,
              initialValue: measurement.standProfile,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(standProfile: e)),
            ),
            const Divider(),
            ExpanderSection(measurement),
            const Divider(),
            const SizedBox(height: 8),
          ],
        ),
      );
}
