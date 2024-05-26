import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';
import 'package:window_meas/l10n/localization.dart';

class SchemeItem extends StatelessWidget {
  const SchemeItem(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${context.l10n.scheme}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Center(
              child: InkWell(
                child: const FaIcon(FontAwesomeIcons.squarePlus),
                onTap: () async {
                  final Scheme? scheme = await context.push('/editor');
                  if (scheme != null && context.mounted) {
                    context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(scheme: scheme));
                  }
                },
              ),
            ),
          ],
        ),
      );
}
