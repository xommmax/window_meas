import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/common/ext/cubit_ext.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/pdf/pdf_generator.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';
import 'package:window_meas/l10n/localization.dart';

@injectable
class MeasurementDetailsCubit extends EventCubit<MeasurementDetailsState> {
  final MeasurementRepository _measRepository;
  final SettingsRepository _settingsRepository;

  MeasurementDetailsCubit(
    this._measRepository,
    this._settingsRepository,
  ) : super(MeasurementDetailsState.initial()) {
    _settingsRepository.getSettings().then((settings) {
      if (settings?.isAdminModeEnabled != null) {
        emit(state.copyWith(isAdminModeEnabled: settings!.isAdminModeEnabled));
      }
    });
  }

  void setMeasurement(Measurement measurement) {
    emit(state.copyWith(measurement: measurement));
  }

  Future<void> updateMeasurement(Measurement measurement) async {
    await _measRepository.updateMeasurement(measurement);
    emit(state.copyWith(measurement: measurement));
  }

  Future<void> deleteMeasurement() async {
    if (state.measurement == null) return;
    await _measRepository.deleteMeasurement(state.measurement!.id);
    emit(state.copyWith(measurement: null));
  }

  Future<void> deletePhoto() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(photoPath: null);
    await _measRepository.updateMeasurement(updatedMeasurement);
    emit(state.copyWith(measurement: updatedMeasurement));
  }

  Future<void> deleteScheme() async {
    if (state.measurement == null) return;
    final updatedMeasurement = state.measurement!.copyWith(scheme: null);
    await _measRepository.updateMeasurement(updatedMeasurement);
    emit(state.copyWith(measurement: updatedMeasurement));
  }

  Future<void> generatePdf({bool share = true}) async {
    if (state.measurement == null) return;

    try {
      emit(state.copyWith(isLoading: true));

      final file = await _getPdfFile();

      if (share) {
        await Share.shareXFiles([XFile(file.path)], text: state.measurement!.name);
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
      final fileRemotePath = await _addFileToCDN(file);
      final measurement = state.measurement!.copyWith(pdfFile: fileRemotePath);

      await _measRepository.addRemoteMeasurement(measurement);
      emitEvent(state.copyWith(message: Localization.l10n.successfullySentToCrm));
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotSendToCrm));
    } finally {
      emit(state.copyWith(isLoading: false));
    }

    await _loadLocalMeasurement(state.measurement!.id);
  }

  Future<void> _loadLocalMeasurement(String measurementId) async {
    try {
      emit(state.copyWith(isLoading: true));
      final measurement = await _measRepository.getLocalMeasurement(measurementId);
      emit(state.copyWith(measurement: measurement));
    } catch (e) {
      emitEvent(state.copyWith(message: Localization.l10n.errorCannotLoadMeasurement));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<File> _getPdfFile() async {
    final printEmptyFields = await _settingsRepository.getSettings().then(
          (settings) => settings?.printEmptyFields ?? Settings.defaultPrintEmptyFields,
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
      await _measRepository.updateMeasurement(updatedMeasurement);
      emit(state.copyWith(measurement: updatedMeasurement));
    }
  }

  Future<String> _addFileToCDN(File file) async {
    final ref = FirebaseStorage.instance.ref('measurements/pdf').child(basename(file.path));
    try {
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      await ref.putFile(file);
      final url = await ref.getDownloadURL();
      return url;
    }
  }
}
