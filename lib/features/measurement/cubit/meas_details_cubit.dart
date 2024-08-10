import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/common/ext/cubit_ext.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
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
    await _measRepository.updateLocalMeasurement(measurement);
    emit(state.copyWith(measurement: measurement));
  }

  Future<void> updatePosition(Position position) async {
    final index = state.measurement!.positions.indexWhere((e) => e.id == position.id);
    if (index != -1) {
      final List<Position> updatedPositions = List.of(state.measurement!.positions);
      updatedPositions[index] = position;
      await updateMeasurement(state.measurement!.copyWith(positions: updatedPositions));
    }
  }

  Future<void> deleteMeasurement() async {
    if (state.measurement == null) return;
    await _measRepository.deleteLocalMeasurement(state.measurement!.id);
    emit(state.copyWith(measurement: null));
  }

  Future<void> takePicture(Position position) async {
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: ImageSource.camera,
      requestFullMetadata: false,
      imageQuality: 20,
    );

    if (file != null && state.measurement != null) {
      updatePosition(position.copyWith(photoPath: file.path));
    }
  }

  Future<void> deletePhoto(Position position) => updatePosition(position.copyWith(photoPath: null));

  Future<void> deleteScheme(Position position) => updatePosition(position.copyWith(scheme: null));

  Future<void> generatePdf({bool open = true}) async {
    if (state.measurement == null) return;

    try {
      emit(state.copyWith(isLoading: true));

      final file = await _getPdfFile();

      if (open) {
        await OpenFile.open(file.path);
      } else {
        await Share.shareXFiles([XFile(file.path)], text: state.measurement!.name);
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
      await _measRepository.uploadPdfFile(file, state.measurement!.leadId);
      emitEvent(state.copyWith(message: Localization.l10n.successfullySentToCrm));
    } catch (e) {
      emitEvent(state.copyWith(message: e.toString()));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<File> _getPdfFile() async {
    final printEmptyFields = await _settingsRepository
        .getSettings()
        .then((settings) => settings?.printEmptyFields ?? Settings.defaultPrintEmptyFields);

    final file = await PdfGenerator.generate(
      state.measurement!,
      showEmptyFields: printEmptyFields,
    );

    return file;
  }

  Future<void> addPosition() async {
    if (state.measurement == null) return;

    final updatedPositions = List.of(state.measurement!.positions);
    updatedPositions.add(Position.initial());
    await updateMeasurement(state.measurement!.copyWith(positions: updatedPositions));
  }

  Future<void> duplicatePosition(String id) async {
    if (state.measurement == null) return;

    final index = state.measurement!.positions.indexWhere((e) => e.id == id);
    if (index != -1) {
      final updatedPositions = List.of(state.measurement!.positions);
      final newPosition = state.measurement!.positions[index].copyWith(id: const Uuid().v4());
      updatedPositions.add(newPosition);
      await updateMeasurement(state.measurement!.copyWith(positions: updatedPositions));
    }
  }

  Future<void> deletePosition(String id) async {
    if (state.measurement == null || state.measurement!.positions.length < 2) return;

    final index = state.measurement!.positions.indexWhere((e) => e.id == id);
    if (index != -1) {
      final updatedPositions = List.of(state.measurement!.positions);
      updatedPositions.removeAt(index);
      await updateMeasurement(state.measurement!.copyWith(positions: updatedPositions));
    }
  }

  Future<void> deleteFlexible(Position position, Scheme? flexible) async {
    if (flexible == null) return;
    final index = position.flexibles.indexWhere((e) => e.id == flexible.id);
    if (index != -1) {
      final List<Scheme> updatedFlexibles = List.of(position.flexibles);
      updatedFlexibles.removeAt(index);
      await updatePosition(position.copyWith(flexibles: updatedFlexibles));
    }
  }

  Future<void> insertFlexible(Position position, Scheme? flexible) async {
    if (flexible == null) return;
    final index = position.flexibles.indexWhere((e) => e.id == flexible.id);
    if (index != -1) {
      final List<Scheme> updatedFlexibles = List.of(position.flexibles);
      updatedFlexibles[index] = flexible;
      await updatePosition(position.copyWith(flexibles: updatedFlexibles));
    } else {
      final List<Scheme> updatedFlexibles = List.of(position.flexibles);
      updatedFlexibles.add(flexible);
      await updatePosition(position.copyWith(flexibles: updatedFlexibles));
    }
  }
}
