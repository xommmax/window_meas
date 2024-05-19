import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/view/details/widgets/items.dart';

class BuildingInfoSection extends StatelessWidget {
  const BuildingInfoSection(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.background,
        child: Column(
          children: [
            const SizedBox(height: 8),
            DropdownItem<BuildingType>(
              title: context.l10n.buildingType,
              values: BuildingType.values,
              initialValue: measurement.buildingType,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(buildingType: e)),
            ),
            const Divider(),
            DropdownItem<FlatStatus>(
              title: context.l10n.flatStatus,
              values: FlatStatus.values,
              initialValue: measurement.flatStatus,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(flatStatus: e)),
            ),
            const Divider(),
            SwitchItem(
              context.l10n.assembly,
              measurement.assembly,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(assembly: b)),
            ),
            const Divider(),
            SwitchItem(
              context.l10n.disassembly,
              measurement.disassembly,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(disassembly: b)),
            ),
            const Divider(),
            SwitchItem(
              context.l10n.delivery,
              measurement.delivery,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(delivery: b)),
            ),
            const Divider(),
            SwitchItem(
              context.l10n.unloading,
              measurement.unloading,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(unloading: b)),
            ),
            const Divider(),
            SwitchItem(
              context.l10n.garbageRemoval,
              measurement.garbageRemoval,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(garbageRemoval: b)),
            ),
            const Divider(),
            DropdownItem<ElevatorOptions>(
              title: context.l10n.elevator,
              values: ElevatorOptions.values,
              initialValue: measurement.elevator,
              onSelected: (e) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(elevator: e)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
