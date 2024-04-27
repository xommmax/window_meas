import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/meas_repo.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:uuid/uuid.dart';

@injectable
class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(this.repo) : super(MeasurementListState.empty());

  final MeasurementRepository repo;
  StreamSubscription? measSubscription;

  Future<String> addNewMeasurement() async {
    final id = const Uuid().v4();

    final measurement = Measurement(date: DateTime.now(), id: id);
    await repo.addMeasurement(measurement);

    return id;
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
