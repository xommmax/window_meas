import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

part 'meas_details_state.freezed.dart';

@freezed
class MeasurementDetailsState with _$MeasurementDetailsState {
  const MeasurementDetailsState._();

  const factory MeasurementDetailsState({
    required Measurement? measurement,
  }) = _MeasurementDetailsState;

  factory MeasurementDetailsState.initial() => const MeasurementDetailsState(measurement: null);
}
