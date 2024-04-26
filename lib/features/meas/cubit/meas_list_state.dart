import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

part 'meas_list_state.freezed.dart';

@freezed
class MeasurementListState with _$MeasurementListState {
  const factory MeasurementListState({
    @Default([]) List<Measurement> measurements,
  }) = _MeasurementListState;
}
