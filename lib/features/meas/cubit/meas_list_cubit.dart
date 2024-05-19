import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

@injectable
class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(this.repo) : super(MeasurementListState.empty());

  final MeasurementRepository repo;
  StreamSubscription? measSubscription;

  Future<String> addNewMeasurement() async {
    final measurement = Measurement.initial();
    await repo.addMeasurement(measurement);

    return measurement.id;
  }

  void watchMeasurements() async {
    measSubscription = repo.watchMeasurements().listen((measurements) {
      emit(MeasurementListState(measurements: measurements));
    });
    final measurements = await repo.getMeasurements();
    emit(MeasurementListState(measurements: measurements));
  }

  @override
  Future<void> close() {
    measSubscription?.cancel();
    return super.close();
  }
}
