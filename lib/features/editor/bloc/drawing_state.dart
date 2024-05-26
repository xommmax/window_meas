import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';

part 'drawing_state.freezed.dart';

@freezed
class DrawingState with _$DrawingState {
  const DrawingState._();

  const factory DrawingState({
    required Scheme scheme,
  }) = _DrawingState;

  factory DrawingState.initial() => DrawingState(
        scheme: Scheme.initial(),
      );
}
