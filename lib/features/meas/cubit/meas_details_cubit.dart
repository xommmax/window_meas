import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/pdf/pdf_generator.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';

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
    // await Share.shareXFiles([XFile(file.path)], text: 'Share Measurement');
  }

  Future<void> shareCrm() async {}
}
