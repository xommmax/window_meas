import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';

@injectable
class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(this.repo) : super(MeasurementListState.empty());

  final MeasurementRepository repo;
  StreamSubscription? measSubscription;

  Future<String> addMeasurement() async {
    final measurement = Measurement.initial();
    await repo.addLocalMeasurement(measurement);

    return measurement.id;
  }

  void watchMeasurements() async {
    measSubscription = repo.watchMeasurements().listen((measurements) {
      emit(MeasurementListState(measurements: measurements));
    });
    final measurements = await repo.getLocalMeasurements();
    emit(MeasurementListState(measurements: measurements));
  }

  @override
  Future<void> close() {
    measSubscription?.cancel();
    return super.close();
  }
}
