import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/l10n/localization.dart';

part 'measurement_dto.freezed.dart';
part 'measurement_dto.g.dart';

@freezed
class MeasurementDTO with _$MeasurementDTO {
  const MeasurementDTO._();

  const factory MeasurementDTO({
    int? id,
    required String requestId,
    required String name,
    required int createdAt,
    required int updatedAt,
    // all the measurement param fields
    List<CustomFieldDTO>? customFieldsValues,
  }) = _MeasurementDTO;

  factory MeasurementDTO.fromJson(Map<String, dynamic> json) => _$MeasurementDTOFromJson(json);

  factory MeasurementDTO.fromDomain(Measurement measurement) => MeasurementDTO(
        id: measurement.remoteId,
        requestId: measurement.id,
        name:
            '${Localization.l10n.measurement} ${DateFormat('dd.MM.yyyy').format(measurement.date)}. ${Localization.l10n.measurer}: ${measurement.measurer}, ${Localization.l10n.client}: ${measurement.clientName}',
        createdAt: measurement.date.millisecondsSinceEpoch ~/ 1000,
        updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        customFieldsValues: [],
      );

  @override
  @JsonKey(includeIfNull: false)
  int? get id => super.id;
}
