import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/widgets/items/items.dart';

class AddressSection extends StatelessWidget {
  const AddressSection(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            InputItem(
              title: context.l10n.city,
              value: measurement.city,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(city: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.district,
              value: measurement.district,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(district: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.street,
              value: measurement.street,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(street: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.building,
              value: measurement.building,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(building: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.residentialComplex,
              value: measurement.residentialComplex,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(residentialComplex: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.block,
              value: measurement.block,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(block: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.entrance,
              value: measurement.entrance,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(entrance: s)),
              keyboardType: TextInputType.number,
            ),
            const Divider(),
            InputItem(
              title: context.l10n.doorphone,
              value: measurement.doorphone,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(doorphone: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.floor,
              value: measurement.floor,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(floor: s)),
              keyboardType: TextInputType.number,
            ),
            const Divider(),
            InputItem(
              title: context.l10n.apartment,
              value: measurement.apartment,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(apartment: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.housingCoopNumber,
              value: measurement.housingCoopNumber,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(
                      measurement.copyWith(housingCoopNumber: s)),
                      keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
}
