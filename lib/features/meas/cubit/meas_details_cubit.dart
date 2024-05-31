import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart';
import 'package:share_plus/share_plus.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/pdf/pdf_generator.dart';

@injectable
class MeasurementDetailsCubit extends Cubit<MeasurementDetailsState> {
  final MeasurementRepository repo;

  MeasurementDetailsCubit(this.repo) : super(MeasurementDetailsState.initial());

  Future<void> loadMeasurement(String measurementId) async {
    final measurement = await repo.getMeasurement(measurementId);
    emit(MeasurementDetailsState(measurement: measurement));
  }

  Future<void> updateMeasurement(Measurement measurement) async {
    await repo.updateMeasurement(measurement);
    emit(MeasurementDetailsState(measurement: measurement));
  }

  Future<void> deleteMeasurement() async {
    if (state.measurement == null) return;
    await repo.deleteMeasurement(state.measurement!.id);
    emit(const MeasurementDetailsState(measurement: null));
  }

  Future<void> generatePdf() async {
    if (state.measurement == null) return;
    final file = await PdfGenerator.generate(state.measurement!);

    // await OpenFile.open(file.path);
    await Share.shareXFiles([XFile(file.path)], text: 'Share Measurement');
  }

  Future<void> shareCrm() async {}
}
