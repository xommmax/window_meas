import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
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
                  .updateMeasurement(
                      measurement.copyWith(parapetReinforcement: b)),
            ),
            const Divider(),
            DropdownItem<WindowsillExtension>(
              title: context.l10n.windowsillExtension,
              values: WindowsillExtension.values,
              initialValue: measurement.windowsillExtension,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(windowsillExtension: e)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.slabExtension,
              value: measurement.slabExtension,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(slabExtension: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.extensionSheathing,
              value: measurement.extensionSheathing,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(extensionSheathing: b)),
            ),
            const Divider(),
            SwitchItem(
              title: context.l10n.insulation,
              value: measurement.insulation,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(insulation: b)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
