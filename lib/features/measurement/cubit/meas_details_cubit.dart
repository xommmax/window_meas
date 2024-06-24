import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/common/ext/cubit_ext.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/pdf/pdf_generator.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';
import 'package:window_meas/l10n/localization.dart';

@injectable
class MeasurementDetailsCubit extends EventCubit<MeasurementDetailsState> {
  final MeasurementRepository measRepo;
  final SettingsRepository settingsRepo;

  MeasurementDetailsCubit(
    this.measRepo,
    this.settingsRepo,
  ) : super(MeasurementDetailsState.initial());

  Future<void> loadData(String measurementId) async {
    try {
      emit(state.copyWith(isLoading: true));
      final measurement = await measRepo.getMeasurement(measurementId);
      emit(state.copyWith(measurement: measurement));
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotLoadMeasurement));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> updateMeasurement(Measurement measurement) async {
    await measRepo.updateMeasurement(measurement);
    emit(state.copyWith(measurement: measurement));
  }

  Future<void> deleteMeasurement() async {
    if (state.measurement == null) return;
    await measRepo.deleteMeasurement(state.measurement!.id);
    emit(state.copyWith(measurement: null));
  }

  Future<void> deletePhoto() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(photoPath: null);
    await measRepo.updateMeasurement(updatedMeasurement);
    emit(state.copyWith(measurement: updatedMeasurement));
  }

  Future<void> deleteScheme() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(scheme: null);
    await measRepo.updateMeasurement(updatedMeasurement);
    emit(state.copyWith(measurement: updatedMeasurement));
  }

  Future<void> generatePdf({bool share = true}) async {
    if (state.measurement == null) return;

    try {
      emit(state.copyWith(isLoading: true));

      final file = await _getPdfFile();

      if (share) {
        final shareText = '''
${Localization.l10n.measurement} №${state.measurement!.localId?.toString().padLeft(4, '0') ?? ''}
${DateFormat('dd.MM.yyyy, HH:mm').format(state.measurement!.date)}
${state.measurement!.clientName}
    ''';
        await Share.shareXFiles([XFile(file.path)], text: shareText);
      } else {
        await OpenFile.open(file.path);
      }
    } catch (_) {
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> sendToCrm() async {
    if (state.measurement == null) return;

    try {
      emit(state.copyWith(isLoading: true));
      final file = await _getPdfFile();

      await measRepo.addRemoteMeasurement(state.measurement!, file);
      emitEvent(state.copyWith(message: Localization.l10n.successfullySentToCrm));
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotSendToCrm));
    } finally {
      emit(state.copyWith(isLoading: false));
    }

    await loadData(state.measurement!.id);
  }

  Future<File> _getPdfFile() async {
    final printEmptyFields = await settingsRepo.getSettings().then(
          (settings) => settings?.printEmptyFields ?? false,
        );

    final file = await PdfGenerator.generate(
      state.measurement!,
      showEmptyFields: printEmptyFields,
    );

    return file;
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
      emit(state.copyWith(measurement: updatedMeasurement));
    }
  }
}
