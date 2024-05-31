import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/items.dart';

class BuildingInfoSection extends StatelessWidget {
  const BuildingInfoSection(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(height: 8),
            DropdownItem<BuildingType>(
              title: context.l10n.buildingType,
              values: BuildingType.values,
              initialValue: measurement.buildingType,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(buildingType: e)),
            ),
            const Divider(),
            DropdownItem<FlatStatus>(
              title: context.l10n.flatStatus,
              values: FlatStatus.values,
              initialValue: measurement.flatStatus,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(flatStatus: e)),
            ),
            const Divider(),
            DropdownItem<ElevatorOptions>(
              title: context.l10n.elevator,
              values: ElevatorOptions.values,
              initialValue: measurement.elevator,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(elevator: e)),
            ),
            const Divider(),
            DropdownItem<AssemblyType>(
              title: context.l10n.assembly,
              values: AssemblyType.values,
              initialValue: measurement.assembly,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(assembly: e)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.disassembly,
              value: measurement.disassembly,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(disassembly: b)),
            ),
            const Divider(),
            if (measurement.disassembly)
              Subcategory(
                children: [
                  SwitchItem(
                    title: context.l10n.screedDisassembly,
                    value: measurement.screedDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(screedDisassembly: b)),
                  ),
                  const Divider(),
                  SwitchItem(
                    title: context.l10n.gridDisassembly,
                    value: measurement.gridDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(gridDisassembly: b)),
                  ),
                  const Divider(),
                  SwitchItem(
                    title: context.l10n.roofDisassembly,
                    value: measurement.roofDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                            measurement.copyWith(roofDisassembly: b)),
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.delivery,
              value: measurement.delivery,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(delivery: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.unloading,
              value: measurement.unloading,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(unloading: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.garbageRemoval,
              value: measurement.garbageRemoval,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(garbageRemoval: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.sealing,
              value: measurement.sealing,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(sealing: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.vacuumCleaner,
              value: measurement.vacuumCleaner,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(vacuumCleaner: b)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.estimatedAssemblyTime,
              value: measurement.estimatedAssemblyTime,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(estimatedAssemblyTime: s)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
