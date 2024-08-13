import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/assembly_type_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/elevator_options_enum.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/flat_status_enum.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/building_type_enum.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';

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
              title: context.l10n.delivery,
              value: measurement.delivery,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(delivery: b)),
            ),
            const Divider(),
            if (measurement.delivery)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.deliveryPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(deliveryPrice: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.unloading,
              value: measurement.unloading,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(unloading: b)),
            ),
            const Divider(),
            if (measurement.unloading)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.unloadingPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(unloadingPrice: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.garbageRemoval,
              value: measurement.garbageRemoval,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(garbageRemoval: b)),
            ),
            const Divider(),
            if (measurement.garbageRemoval)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.garbageRemovalPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(garbageRemovalPrice: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.sealing,
              value: measurement.sealing,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(sealing: b)),
            ),
            const Divider(),
            if (measurement.sealing)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.sealingPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(sealingPrice: s)),
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
              ]),
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
                  .updateMeasurement(measurement.copyWith(estimatedAssemblyTime: s)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
