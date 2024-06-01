import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/pdf/pdf_generator.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';
import 'package:window_meas/l10n/localization.dart';

@injectable
class MeasurementDetailsCubit extends Cubit<MeasurementDetailsState> {
  final MeasurementRepository measRepo;
  final SettingsRepository settingsRepo;

  MeasurementDetailsCubit(
    this.measRepo,
    this.settingsRepo,
  ) : super(MeasurementDetailsState.initial());

  Future<void> loadMeasurement(String measurementId) async {
    final measurement = await measRepo.getMeasurement(measurementId);
    emit(MeasurementDetailsState(measurement: measurement));
  }

  Future<void> updateMeasurement(Measurement measurement) async {
    await measRepo.updateMeasurement(measurement);
    emit(MeasurementDetailsState(measurement: measurement));
  }

  Future<void> deleteMeasurement() async {
    if (state.measurement == null) return;
    await measRepo.deleteMeasurement(state.measurement!.id);
    emit(const MeasurementDetailsState(measurement: null));
  }

  Future<void> deletePhoto() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(photoPath: null);
    await measRepo.updateMeasurement(updatedMeasurement);
    emit(MeasurementDetailsState(measurement: updatedMeasurement));
  }

  Future<void> deleteScheme() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(scheme: null);
    await measRepo.updateMeasurement(updatedMeasurement);
    emit(MeasurementDetailsState(measurement: updatedMeasurement));
  }

  Future<void> generatePdf() async {
    if (state.measurement == null) return;

    final printEmptyFields = await settingsRepo.getSettings().then(
          (settings) => settings?.printEmptyFields ?? false,
        );

    final file = await PdfGenerator.generate(
      state.measurement!,
      showEmptyFields: printEmptyFields,
    );

    await OpenFile.open(file.path);
    final shareText = '''
${Localization.l10n.measurement} №${state.measurement!.innerId?.toString().padLeft(4, '0') ?? ''}
${DateFormat('dd.MM.yyyy, HH:mm').format(state.measurement!.date)}
${state.measurement!.clientName}
    ''';
    // await Share.shareXFiles([XFile(file.path)], text: shareText);
  }

  Future<void> takePicture() async {
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: ImageSource.camera,
      requestFullMetadata: false,
      imageQuality: 20,
    );

    if (file != null && state.measurement != null) {
      final updatedMeasurement = state.measurement!.copyWith(photoPath: file.path);
      await measRepo.updateMeasurement(updatedMeasurement);
      emit(MeasurementDetailsState(measurement: updatedMeasurement));
    }
  }

  Future<void> shareCrm() async {}
}
