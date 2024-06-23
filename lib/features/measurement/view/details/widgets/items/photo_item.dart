import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/confirmation_dialog.dart';
import 'package:window_meas/l10n/localization.dart';

class PhotoItem extends StatelessWidget {
  PhotoItem(
    Measurement measurement, {
    super.key,
  }) : path = measurement.photoPath == null
            ? null
            : File(measurement.photoPath!).existsSync()
                ? measurement.photoPath!
                : null;

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${context.l10n.photo}: ',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Center(
            child: InkWell(
              child: path == null
                  ? const Padding(
                      padding: EdgeInsets.all(16),
                      child: FaIcon(FontAwesomeIcons.squarePlus),
                    )
                  : SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.file(File(path!)),
                    ),
              onTap: () => _onTakePhotoClick(context),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onTakePhotoClick(BuildContext context) async {
    if (path != null) {
      final shouldDelete = await _showDeletionDialog(context);
      if (shouldDelete && context.mounted) {
        await context.read<MeasurementDetailsCubit>().deletePhoto();
      }
    } else {
      await context.read<MeasurementDetailsCubit>().takePicture();
    }
  }

  Future<bool> _showDeletionDialog(BuildContext context) => ConfirmationDialog.show(
        context,
        context.l10n.deletePhoto,
        context.l10n.deletePhotoDesc,
      );
}
