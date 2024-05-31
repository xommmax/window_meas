import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

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

  Future<void> generatePdf() async {}

  Future<void> shareCrm() async {}
}
