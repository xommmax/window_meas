import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_value_dto.dart';
import 'package:window_meas/features/measurement/data/remote/scheme_builder/field_code_mapper.dart';
import 'package:window_meas/l10n/localization.dart';

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

  factory MeasurementDTO.fromDomain(Measurement measurement, String pdfFilePath) => MeasurementDTO(
        id: measurement.remoteId,
        requestId: measurement.id,
        name:
            '${Localization.l10n.measurement} ${DateFormat('dd.MM.yyyy').format(measurement.date)}. ${Localization.l10n.measurer}: ${measurement.measurer}, ${Localization.l10n.client}: ${measurement.clientName}',
        createdAt: measurement.date.millisecondsSinceEpoch ~/ 1000,
        updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
        customFieldsValues: [
          _url(FieldToCode.pdfFile, pdfFilePath),
          _text(FieldToCode.clientName, measurement.clientName),
          _text(FieldToCode.cost, measurement.cost),
          _text(FieldToCode.prepayment, measurement.prepayment),
          _text(FieldToCode.phoneNumberMain, measurement.phoneNumberMain),
          _text(FieldToCode.phoneNumberAdditional, measurement.phoneNumberAdditional),
          _text(FieldToCode.howDiscovered, measurement.howDiscovered),
          _text(FieldToCode.comment, measurement.comment),
          _text(FieldToCode.measurer, measurement.measurer),
          _text(FieldToCode.city, measurement.city),
          _text(FieldToCode.district, measurement.district),
          _text(FieldToCode.street, measurement.street),
          _text(FieldToCode.building, measurement.building),
          _text(FieldToCode.residentialComplex, measurement.residentialComplex),
          _text(FieldToCode.block, measurement.block),
          _text(FieldToCode.entrance, measurement.entrance),
          _text(FieldToCode.doorphone, measurement.doorphone),
          _text(FieldToCode.floor, measurement.floor),
          _text(FieldToCode.apartment, measurement.apartment),
          _text(FieldToCode.housingCoopNumber, measurement.housingCoopNumber),
          _enum(FieldToCode.buildingType, measurement.buildingType),
          _enum(FieldToCode.flatStatus, measurement.flatStatus),
          _enum(FieldToCode.elevator, measurement.elevator),
          _enum(FieldToCode.assembly, measurement.assembly),
          _bool(FieldToCode.disassembly, measurement.disassembly),
          _bool(FieldToCode.screedDisassembly, measurement.screedDisassembly),
          _bool(FieldToCode.gridDisassembly, measurement.gridDisassembly),
          _bool(FieldToCode.roofDisassembly, measurement.roofDisassembly),
          _bool(FieldToCode.delivery, measurement.delivery),
          _bool(FieldToCode.unloading, measurement.unloading),
          _bool(FieldToCode.garbageRemoval, measurement.garbageRemoval),
          _bool(FieldToCode.sealing, measurement.sealing),
          _bool(FieldToCode.vacuumCleaner, measurement.vacuumCleaner),
          _text(FieldToCode.estimatedAssemblyTime, measurement.estimatedAssemblyTime),
          _text(FieldToCode.quarterSize, measurement.quarterSize),
          _enum(FieldToCode.quarterPosition, measurement.quarterPosition),
          _bool(FieldToCode.staticCalculation, measurement.staticCalculation),
          _text(FieldToCode.profileSystem, measurement.profileSystem),
          _enum(FieldToCode.doorOpeningType, measurement.doorOpeningType),
          _enum(FieldToCode.doorstep, measurement.doorstep),
          _enum(FieldToCode.doorstepType, measurement.doorstepType),
          _text(FieldToCode.laminationInternal, measurement.laminationInternal),
          _text(FieldToCode.laminationExternal, measurement.laminationExternal),
          _enum(FieldToCode.rubberColor, measurement.rubberColor),
          _enum(FieldToCode.standProfile, measurement.standProfile),
          _text(FieldToCode.glassUnit, measurement.glassUnit),
          _enum(FieldToCode.panelType, measurement.panelType),
          _enum(FieldToCode.panelThickness, measurement.panelThickness),
          _text(FieldToCode.furniture, measurement.furniture),
          _enum(FieldToCode.windowsillType, measurement.windowsillType),
          _enum(FieldToCode.windowsillDepth, measurement.windowsillDepth),
          _text(FieldToCode.windowsillSize, measurement.windowsillSize),
          _enum(FieldToCode.windowsillConnector, measurement.windowsillConnector),
          _text(FieldToCode.windowsillColor, measurement.windowsillColor),
          _bool(FieldToCode.windowsillAssembly, measurement.windowsillAssembly),
          _text(FieldToCode.drainageDepth, measurement.drainageDepth),
          _text(FieldToCode.drainageWidth, measurement.drainageWidth),
          _text(FieldToCode.drainageColor, measurement.drainageColor),
          _bool(FieldToCode.drainageEndCap, measurement.drainageEndCap),
          _text(FieldToCode.canopyType, measurement.canopyType),
          _text(FieldToCode.canopySize, measurement.canopySize),
          _text(FieldToCode.canopyColor, measurement.canopyColor),
          _text(FieldToCode.slopeDepth, measurement.slopeDepth),
          _text(FieldToCode.slopeLength, measurement.slopeLength),
          _text(FieldToCode.slopeQuantity, measurement.slopeQuantity),
          _bool(FieldToCode.expanderRight, measurement.expanderOption.rightEnabled),
          _enum(FieldToCode.expanderRightWidth, measurement.expanderOption.rightWidth),
          _text(FieldToCode.expanderRightLength, measurement.expanderOption.rightLength),
          _text(FieldToCode.expanderRightQuantity, measurement.expanderOption.rightAmount),
          _bool(FieldToCode.expanderLeft, measurement.expanderOption.leftEnabled),
          _enum(FieldToCode.expanderLeftWidth, measurement.expanderOption.leftWidth),
          _text(FieldToCode.expanderLeftLength, measurement.expanderOption.leftLength),
          _text(FieldToCode.expanderLeftQuantity, measurement.expanderOption.leftAmount),
          _bool(FieldToCode.expanderTop, measurement.expanderOption.topEnabled),
          _enum(FieldToCode.expanderTopWidth, measurement.expanderOption.topWidth),
          _text(FieldToCode.expanderTopLength, measurement.expanderOption.topLength),
          _text(FieldToCode.expanderTopQuantity, measurement.expanderOption.topAmount),
          _bool(FieldToCode.expanderBottom, measurement.expanderOption.bottomEnabled),
          _enum(FieldToCode.expanderBottomWidth, measurement.expanderOption.bottomWidth),
          _text(FieldToCode.expanderBottomLength, measurement.expanderOption.bottomLength),
          _text(FieldToCode.expanderBottomQuantity, measurement.expanderOption.bottomAmount),
          _bool(FieldToCode.parapetReinforcement, measurement.parapetReinforcement),
          _enum(FieldToCode.windowsillExtension, measurement.windowsillExtension),
          _bool(FieldToCode.slabExtension, measurement.slabExtension),
          _bool(FieldToCode.extensionSheathing, measurement.extensionSheathing),
          _bool(FieldToCode.insulation, measurement.insulation),
        ],
      );
}

CustomFieldDTO _text(FieldToCode mapper, String value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );

CustomFieldDTO _bool(FieldToCode mapper, bool value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );

CustomFieldDTO _enum<T extends ParamEnum>(FieldToCode mapper, T value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value.localizedName)],
    );

CustomFieldDTO _url(FieldToCode mapper, String value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );
