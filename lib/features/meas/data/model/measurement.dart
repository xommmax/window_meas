import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement.freezed.dart';

@freezed
abstract class Measurement with _$Measurement {
  const factory Measurement({
    double? width,
    double? height,
  }) = _Measurement;
}
