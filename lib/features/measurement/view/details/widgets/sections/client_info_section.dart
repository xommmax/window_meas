import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/signature_item.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';

class ClientInfoSection extends StatelessWidget {
  const ClientInfoSection(
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
              title: context.l10n.leadId,
              value: measurement.leadId,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(leadId: s)),
              keyboardType: TextInputType.number,
            ),
            const Divider(),
            InputItem(
              title: context.l10n.clientName,
              value: measurement.clientName,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(clientName: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.cost,
              value: measurement.cost,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(cost: s)),
              keyboardType: TextInputType.number,
            ),
            const Divider(),
            InputItem(
              title: context.l10n.prepayment,
              value: measurement.prepayment,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(prepayment: s)),
              keyboardType: TextInputType.number,
            ),
            const Divider(),
            TextItem(title: context.l10n.phoneNumber),
            const Divider(),
            Subcategory(children: [
              InputItem(
                title: context.l10n.phoneNumberMain,
                value: measurement.phoneNumberMain,
                onChanged: (s) => context
                    .read<MeasurementDetailsCubit>()
                    .updateMeasurement(measurement.copyWith(phoneNumberMain: s)),
                keyboardType: TextInputType.phone,
              ),
              const Divider(),
              InputItem(
                title: context.l10n.phoneNumberAdditional,
                value: measurement.phoneNumberAdditional,
                onChanged: (s) => context
                    .read<MeasurementDetailsCubit>()
                    .updateMeasurement(measurement.copyWith(phoneNumberAdditional: s)),
                keyboardType: TextInputType.phone,
              ),
              const Divider(),
            ]),
            InputItem(
              title: context.l10n.howDiscovered,
              value: measurement.howDiscovered,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(howDiscovered: s)),
            ),
            const Divider(),
            InputItem(
              title: context.l10n.comment,
              value: measurement.comment,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(comment: s)),
              maxLines: 3,
              keyboardType: TextInputType.multiline,
            ),
            const Divider(),
            InputItem(
              title: context.l10n.measurer,
              value: measurement.measurer,
              onChanged: (s) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(measurer: s)),
            ),
            const Divider(),
            SignatureItem(measurement),
            const SizedBox(height: 8),
          ],
        ),
      );
}
