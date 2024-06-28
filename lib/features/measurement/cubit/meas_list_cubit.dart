import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_state.dart';
import 'package:window_meas/features/measurement/data/domain/meas_repository.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';
import 'package:window_meas/features/profile/settings/data/settings_repo.dart';

@injectable
class MeasurementListCubit extends Cubit<MeasurementListState> {
  MeasurementListCubit(
    this._measRepository,
    this._settingsRepository,
  ) : super(MeasurementListState.empty());

  final MeasurementRepository _measRepository;
  final SettingsRepository _settingsRepository;
  StreamSubscription? measSubscription;

  Future<String> createMeasurement() async {
    final settings = await _settingsRepository.getSettings();
    final measurer = settings?.userName ?? Settings.defaultUserName;

    final measurement = Measurement.initial(
      id: const Uuid().v4(),
      date: DateTime.now(),
      measurer: measurer,
    );

    await _measRepository.addLocalMeasurement(measurement);

    return measurement.id;
  }

  void watchMeasurements() async {
    measSubscription = _measRepository.watchMeasurements().listen((measurements) {
      emit(MeasurementListState(measurements: measurements));
    });
    final measurements = await _measRepository.getLocalMeasurements();
    emit(MeasurementListState(measurements: measurements));
  }

  @override
  Future<void> close() {
    measSubscription?.cancel();
    return super.close();
  }
}
