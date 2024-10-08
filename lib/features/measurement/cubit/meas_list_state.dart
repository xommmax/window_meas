import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';

part 'meas_list_state.freezed.dart';

@freezed
class MeasurementListState with _$MeasurementListState {
  const MeasurementListState._();

  const factory MeasurementListState({
    required List<Measurement> measurements,
    required bool isAdminModeEnabled,
  }) = _MeasurementListState;

  factory MeasurementListState.empty() => const MeasurementListState(
        measurements: [],
        isAdminModeEnabled: Settings.defaultIsAdminModeEnabled,
      );
}
