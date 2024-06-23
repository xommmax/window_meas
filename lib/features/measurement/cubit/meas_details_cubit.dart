import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/pdf/pdf_generator.dart';
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

  Future<void> loadData(String measurementId) async {
    final measurement = await measRepo.getMeasurement(measurementId);
    emit(MeasurementDetailsState(
      measurement: measurement,
    ));
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

    final printEmptyFields = await settingsRepo.getSettings().then(
          (settings) => settings?.printEmptyFields ?? false,
        );

    final file = await PdfGenerator.generate(
      state.measurement!,
      showEmptyFields: printEmptyFields,
    );

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

  Future<void> shareCrm() async {
    if (state.measurement == null) return;

    await measRepo.addRemoteMeasurement(state.measurement!);
    await loadData(state.measurement!.id);
  }
}
