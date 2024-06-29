import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/profile/settings/data/model/settings.dart';

part 'meas_details_state.freezed.dart';

@freezed
class MeasurementDetailsState with _$MeasurementDetailsState {
  const MeasurementDetailsState._();

  const factory MeasurementDetailsState({
    required Measurement? measurement,
    @Default(false) bool isLoading,
    String? message,
    required bool isAdminModeEnabled,
  }) = _MeasurementDetailsState;

  factory MeasurementDetailsState.initial() => const MeasurementDetailsState(
        measurement: null,
        isAdminModeEnabled: Settings.defaultIsAdminModeEnabled,
      );
}
