import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/confirmation_dialog.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';

class MeasurementDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MeasurementDetailsAppBar(this.measurement, {super.key});

  final Measurement? measurement;

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(
          '${context.l10n.measurement} №${measurement?.localId?.toString().padLeft(4, '0') ?? ''}',
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (s) {
              if (s == context.l10n.generatePdf) {
                context.read<MeasurementDetailsCubit>().generatePdf();
              } else if (s == context.l10n.shareCrm) {
                _shareCrm(context);
              } else if (s == context.l10n.delete) {
                _delete(context);
              }
            },
            icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
            itemBuilder: (BuildContext context) => [
              context.l10n.generatePdf,
              context.l10n.shareCrm,
              context.l10n.delete,
            ].map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList(),
          ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Future<void> _shareCrm(BuildContext context) async {
    await context.read<MeasurementDetailsCubit>().shareCrm();
  }

  Future<void> _delete(BuildContext context) async {
    final shouldDelete = await ConfirmationDialog.show(
      context,
      context.l10n.deleteMeasurement,
      context.l10n.deleteMeasurementDesc,
    );
    if (shouldDelete && context.mounted) {
      await context.read<MeasurementDetailsCubit>().deleteMeasurement();
      if (context.mounted) context.pop();
    }
  }
}
