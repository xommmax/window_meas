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
  ) : super(MeasurementListState.empty()) {
    _settingsSubscription = _settingsRepository.watchSettings().listen((settings) {
      if (settings?.isAdminModeEnabled != null &&
          state.isAdminModeEnabled != settings!.isAdminModeEnabled) {
        emit(state.copyWith(isAdminModeEnabled: settings.isAdminModeEnabled));
        _getMeasurements(settings.isAdminModeEnabled);
      }
    });

    _settingsRepository.getSettings().then((settings) {
      if (settings?.isAdminModeEnabled != null) {
        emit(state.copyWith(isAdminModeEnabled: settings!.isAdminModeEnabled));
      }
      _getMeasurements(settings?.isAdminModeEnabled ?? state.isAdminModeEnabled);
    });
  }

  final MeasurementRepository _measRepository;
  final SettingsRepository _settingsRepository;
  StreamSubscription? _measSubscription;
  StreamSubscription? _settingsSubscription;

  Future<Measurement> createMeasurement() async {
    final settings = await _settingsRepository.getSettings();
    final measurer = settings?.userName ?? Settings.defaultUserName;

    final measurement = Measurement.initial(
      id: const Uuid().v4(),
      date: DateTime.now(),
      measurer: measurer,
    );

    await _measRepository.addLocalMeasurement(measurement);
    final localMeasurement = await _measRepository.getLocalMeasurement(measurement.id);
    return localMeasurement!;
  }

  Future<void> _getMeasurements(bool isAdminModeEnabled) async {
    if (isAdminModeEnabled) {
      await getRemoteMeasurements();
    } else {
      await _watchLocalMeasurements();
    }
  }

  Future<void> _watchLocalMeasurements() async {
    await _measSubscription?.cancel();
    _measSubscription = _measRepository.watchLocalMeasurements().listen((measurements) {
      emit(state.copyWith(measurements: measurements));
    });
    final measurements = await _measRepository.getLocalMeasurements();
    emit(state.copyWith(measurements: measurements));
  }

  Future<void> getRemoteMeasurements() async {
    try {
      final measurements = await _measRepository.getRemoteMeasurements();
      emit(state.copyWith(measurements: measurements));
    } catch (_) {
      emit(state.copyWith(measurements: []));
    }
  }

  @override
  Future<void> close() {
    _measSubscription?.cancel();
    _settingsSubscription?.cancel();
    return super.close();
  }
}
