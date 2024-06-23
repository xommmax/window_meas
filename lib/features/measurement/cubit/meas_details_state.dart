import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';

part 'meas_details_state.freezed.dart';

@freezed
class MeasurementDetailsState with _$MeasurementDetailsState {
  const MeasurementDetailsState._();

  const factory MeasurementDetailsState({
    required Measurement? measurement,
    required List<String> articles,
  }) = _MeasurementDetailsState;

  factory MeasurementDetailsState.initial() => const MeasurementDetailsState(
        measurement: null,
        articles: [],
      );
}
