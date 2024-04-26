import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:uuid/uuid.dart';

@injectable
class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(this.repo) : super(MeasurementListState.empty()) {
    getMeasurements();
  }

  final MeasurementRepository repo;

  Future<void> addNewMeasurement() async {
    final measurement = Measurement(
      date: DateTime.now(),
      id: const Uuid().v4(),
    );
    await repo.addMeasurement(measurement);

    getMeasurements();
  }

  Future<void> getMeasurements() async {
    final measurements = await repo.getMeasurements();
    emit(MeasurementListState(measurements: measurements));
  }
}
