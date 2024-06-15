import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/features/meas/data/model/custom_field_dto.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/l10n/localization.dart';

part 'measurement_dto.freezed.dart';
part 'measurement_dto.g.dart';

@freezed
class MeasurementDTO with _$MeasurementDTO {
  const MeasurementDTO._();

  const factory MeasurementDTO({
    int? id,
    required String name,
    required int createdAt,
    required int updatedAt,
    required String requestId,
    List<CustomFieldDTO>? customFieldsValues,
  }) = _MeasurementDTO;

  factory MeasurementDTO.fromJson(Map<String, dynamic> json) => _$MeasurementDTOFromJson(json);

  factory MeasurementDTO.fromDomain(Measurement measurement) => MeasurementDTO(
        id: measurement.remoteId,
        name:
            '${Localization.l10n.measurement} ${DateFormat('dd.MM.yyyy').format(measurement.date)}. ${Localization.l10n.measurer}: ${measurement.measurer}, ${Localization.l10n.client}: ${measurement.clientName}',
        createdAt: measurement.date.millisecondsSinceEpoch ~/ 1000,
        updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        customFieldsValues: [],
        requestId: measurement.id,
      );
}
