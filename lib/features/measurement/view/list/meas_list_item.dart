import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/l10n/localization.dart';

class MeasurementItem extends StatelessWidget {
  const MeasurementItem(
    this.measurement,
    this.isAdminModeEnabled, {
    super.key,
  });

  final Measurement measurement;
  final bool isAdminModeEnabled;

  @override
  Widget build(BuildContext context) {
    final id = !isAdminModeEnabled
        ? measurement.localId?.toString().padLeft(4, '0') ?? ''
        : measurement.remoteId?.toString() ?? '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () => context.push(
          '/meas_details',
          extra: {'measurement': measurement},
        ),
        child: Card(
          color: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.secondary, AppColors.primary, AppColors.secondary],
                    stops: [0.07, 0.70, 0.95],
                  ),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${context.l10n.measurement} №$id',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.clock, size: 16, color: AppColors.secondary),
                    const SizedBox(width: 12),
                    Text(DateFormat('dd.MM.yyyy, HH:mm').format(measurement.date)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.user, size: 16, color: AppColors.secondary),
                    const SizedBox(width: 12),
                    Text(measurement.clientName),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const FaIcon(FontAwesomeIcons.locationDot,
                        size: 16, color: AppColors.secondary),
                    const SizedBox(width: 12),
                    Text(
                      [
                        measurement.city,
                        [
                          measurement.street,
                          measurement.building,
                        ].where((e) => e.isNotEmpty).join(' '),
                      ].where((e) => e.isNotEmpty).join(', '),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
