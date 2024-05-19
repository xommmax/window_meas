import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/items.dart';

class ClientInfoSection extends StatelessWidget {
  const ClientInfoSection(
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
            InputItem(
              title: context.l10n.address,
              value: measurement.address,
              onChanged: (s) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(address: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.clientName,
              value: measurement.clientName,
              onChanged: (s) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(clientName: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.phoneNumber,
              value: measurement.phoneNumber,
              onChanged: (s) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(phoneNumber: s)),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
