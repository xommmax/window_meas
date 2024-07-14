import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/confirmation_dialog.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';

class MeasurementDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MeasurementDetailsAppBar(
    this.measurement,
    this.isAdminModeEnabled, {
    super.key,
  });

  final Measurement? measurement;
  final bool isAdminModeEnabled;

  @override
  Widget build(BuildContext context) {
    final id = !isAdminModeEnabled
        ? measurement?.localId?.toString().padLeft(4, '0') ?? ''
        : measurement?.remoteId?.toString() ?? '';

    return AppBar(
      title: Text(
        '${context.l10n.measurement} №$id',
      ),
      actions: !isAdminModeEnabled
          ? [
              PopupMenuButton<String>(
                onOpened: () => FocusScope.of(context).requestFocus(FocusNode()),
                onSelected: (s) {
                  if (s == context.l10n.generatePdf) {
                    _generatePdf(context);
                  } else if (s == context.l10n.sendToCrm) {
                    _sendToCrm(context);
                  } else if (s == context.l10n.delete) {
                    _delete(context);
                  }
                },
                icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                itemBuilder: (BuildContext context) => [
                  context.l10n.sendToCrm,
                  context.l10n.generatePdf,
                  context.l10n.delete,
                ].map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Future<void> _generatePdf(BuildContext context) async {
    await context.read<MeasurementDetailsCubit>().generatePdf();
  }

  Future<void> _sendToCrm(BuildContext context) async {
    await context.read<MeasurementDetailsCubit>().sendToCrm();
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
