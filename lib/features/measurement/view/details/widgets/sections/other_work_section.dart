import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';

class OtherWorkSection extends StatelessWidget {
  const OtherWorkSection(
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
            SwitchItem(
              title: context.l10n.parapetReinforcement,
              value: measurement.parapetReinforcement,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(parapetReinforcement: b)),
            ),
            const Divider(),
            if (measurement.parapetReinforcement)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.parapetReinforcementPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(parapetReinforcementPrice: s)),
                ),
                const Divider(),
              ]),
            DropdownItem<WindowsillExtension>(
              title: context.l10n.windowsillExtension,
              values: WindowsillExtension.values,
              initialValue: measurement.windowsillExtension,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(windowsillExtension: e)),
            ),
            const Divider(),
            if (measurement.windowsillExtension != WindowsillExtension.none)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.windowsillExtensionPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(windowsillExtensionPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.slabExtension,
              value: measurement.slabExtension,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(slabExtension: b)),
            ),
            const Divider(),
            if (measurement.slabExtension)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.slabExtensionPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.extensionSheathing,
              value: measurement.extensionSheathing,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(extensionSheathing: b)),
            ),
            const Divider(),
            if (measurement.extensionSheathing)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.extensionSheathingPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(extensionSheathingPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.insulation,
              value: measurement.insulation,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(insulation: b)),
            ),
            const Divider(),
            if (measurement.insulation)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.insulationPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(insulationPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.flooring,
              value: measurement.flooring,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(flooring: b)),
            ),
            const Divider(),
            if (measurement.flooring)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.flooringCovering,
                  value: measurement.flooringCovering,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(flooringCovering: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.price,
                  value: measurement.flooringPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(flooringPrice: s)),
                ),
                const Divider(),
              ]),
            const SizedBox(height: 8),
          ],
        ),
      );
}
