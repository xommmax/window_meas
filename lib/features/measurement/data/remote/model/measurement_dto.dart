import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_mapper.dart';

part 'measurement_dto.freezed.dart';
part 'measurement_dto.g.dart';

@freezed
class MeasurementDTO with _$MeasurementDTO {
  const MeasurementDTO._();

  const factory MeasurementDTO({
    int? id,
    String? requestId,
    String? name,
    int? createdAt,
    int? updatedAt,
    // all the measurement param fields
    List<CustomFieldDTO>? customFieldsValues,
  }) = _MeasurementDTO;

  factory MeasurementDTO.fromJson(Map<String, dynamic> json) => _$MeasurementDTOFromJson(json);

  factory MeasurementDTO.fromDomain(Measurement measurement, String pdfFilePath) =>
      convertFromDomain(measurement, pdfFilePath);

  Measurement toDomain() => convertToDomain(this);
}
