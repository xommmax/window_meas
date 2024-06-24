import 'package:collection/collection.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/params/building_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/expander_option.dart';
import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_value_dto.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_dto.dart';
import 'package:window_meas/features/measurement/data/remote/scheme_builder/field_code_mapper.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/measurement/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/measurement/data/params/flat_status_enum.dart';
import 'package:window_meas/features/measurement/data/params/panel_thickness_enum.dart';
import 'package:window_meas/features/measurement/data/params/panel_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/measurement/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/measurement/data/params/stand_profile_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_type_enum.dart';

/* ---------------------------------------------------------*/
/* ----------------- DOMAIN TO DTO MAPPER ----------------- */
/* ---------------------------------------------------------*/
MeasurementDTO convertFromDomain(Measurement measurement, String pdfFilePath) => MeasurementDTO(
      id: measurement.remoteId,
      requestId: measurement.id,
      name: measurement.name,
      createdAt: measurement.date.millisecondsSinceEpoch ~/ 1000,
      updatedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      customFieldsValues: [
        _urlR(FieldToCode.pdfFile, pdfFilePath),
        _textR(FieldToCode.clientName, measurement.clientName),
        _textR(FieldToCode.cost, measurement.cost),
        _textR(FieldToCode.prepayment, measurement.prepayment),
        _textR(FieldToCode.phoneNumberMain, measurement.phoneNumberMain),
        _textR(FieldToCode.phoneNumberAdditional, measurement.phoneNumberAdditional),
        _textR(FieldToCode.howDiscovered, measurement.howDiscovered),
        _textR(FieldToCode.comment, measurement.comment),
        _textR(FieldToCode.measurer, measurement.measurer),
        _textR(FieldToCode.city, measurement.city),
        _textR(FieldToCode.district, measurement.district),
        _textR(FieldToCode.street, measurement.street),
        _textR(FieldToCode.building, measurement.building),
        _textR(FieldToCode.residentialComplex, measurement.residentialComplex),
        _textR(FieldToCode.block, measurement.block),
        _textR(FieldToCode.entrance, measurement.entrance),
        _textR(FieldToCode.doorphone, measurement.doorphone),
        _textR(FieldToCode.floor, measurement.floor),
        _textR(FieldToCode.apartment, measurement.apartment),
        _textR(FieldToCode.housingCoopNumber, measurement.housingCoopNumber),
        _enumR(FieldToCode.buildingType, measurement.buildingType),
        _enumR(FieldToCode.flatStatus, measurement.flatStatus),
        _enumR(FieldToCode.elevator, measurement.elevator),
        _enumR(FieldToCode.assembly, measurement.assembly),
        _boolR(FieldToCode.disassembly, measurement.disassembly),
        _boolR(FieldToCode.screedDisassembly, measurement.screedDisassembly),
        _boolR(FieldToCode.gridDisassembly, measurement.gridDisassembly),
        _boolR(FieldToCode.roofDisassembly, measurement.roofDisassembly),
        _boolR(FieldToCode.delivery, measurement.delivery),
        _boolR(FieldToCode.unloading, measurement.unloading),
        _boolR(FieldToCode.garbageRemoval, measurement.garbageRemoval),
        _boolR(FieldToCode.sealing, measurement.sealing),
        _boolR(FieldToCode.vacuumCleaner, measurement.vacuumCleaner),
        _textR(FieldToCode.estimatedAssemblyTime, measurement.estimatedAssemblyTime),
        _textR(FieldToCode.quarterSize, measurement.quarterSize),
        _enumR(FieldToCode.quarterPosition, measurement.quarterPosition),
        _boolR(FieldToCode.staticCalculation, measurement.staticCalculation),
        _textR(FieldToCode.profileSystem, measurement.profileSystem),
        _enumR(FieldToCode.doorOpeningType, measurement.doorOpeningType),
        _enumR(FieldToCode.doorstep, measurement.doorstep),
        _enumR(FieldToCode.doorstepType, measurement.doorstepType),
        _textR(FieldToCode.laminationInternal, measurement.laminationInternal),
        _textR(FieldToCode.laminationExternal, measurement.laminationExternal),
        _enumR(FieldToCode.rubberColor, measurement.rubberColor),
        _enumR(FieldToCode.standProfile, measurement.standProfile),
        _textR(FieldToCode.glassUnit, measurement.glassUnit),
        _enumR(FieldToCode.panelType, measurement.panelType),
        _enumR(FieldToCode.panelThickness, measurement.panelThickness),
        _textR(FieldToCode.furniture, measurement.furniture),
        _enumR(FieldToCode.windowsillType, measurement.windowsillType),
        _enumR(FieldToCode.windowsillDepth, measurement.windowsillDepth),
        _textR(FieldToCode.windowsillSize, measurement.windowsillSize),
        _enumR(FieldToCode.windowsillConnector, measurement.windowsillConnector),
        _textR(FieldToCode.windowsillColor, measurement.windowsillColor),
        _boolR(FieldToCode.windowsillAssembly, measurement.windowsillAssembly),
        _textR(FieldToCode.drainageDepth, measurement.drainageDepth),
        _textR(FieldToCode.drainageWidth, measurement.drainageWidth),
        _textR(FieldToCode.drainageColor, measurement.drainageColor),
        _boolR(FieldToCode.drainageEndCap, measurement.drainageEndCap),
        _textR(FieldToCode.canopyType, measurement.canopyType),
        _textR(FieldToCode.canopySize, measurement.canopySize),
        _textR(FieldToCode.canopyColor, measurement.canopyColor),
        _textR(FieldToCode.slopeDepth, measurement.slopeDepth),
        _textR(FieldToCode.slopeLength, measurement.slopeLength),
        _textR(FieldToCode.slopeQuantity, measurement.slopeQuantity),
        _boolR(FieldToCode.expanderRight, measurement.expanderOption.rightEnabled),
        _enumR(FieldToCode.expanderRightWidth, measurement.expanderOption.rightWidth),
        _textR(FieldToCode.expanderRightLength, measurement.expanderOption.rightLength),
        _textR(FieldToCode.expanderRightQuantity, measurement.expanderOption.rightAmount),
        _boolR(FieldToCode.expanderLeft, measurement.expanderOption.leftEnabled),
        _enumR(FieldToCode.expanderLeftWidth, measurement.expanderOption.leftWidth),
        _textR(FieldToCode.expanderLeftLength, measurement.expanderOption.leftLength),
        _textR(FieldToCode.expanderLeftQuantity, measurement.expanderOption.leftAmount),
        _boolR(FieldToCode.expanderTop, measurement.expanderOption.topEnabled),
        _enumR(FieldToCode.expanderTopWidth, measurement.expanderOption.topWidth),
        _textR(FieldToCode.expanderTopLength, measurement.expanderOption.topLength),
        _textR(FieldToCode.expanderTopQuantity, measurement.expanderOption.topAmount),
        _boolR(FieldToCode.expanderBottom, measurement.expanderOption.bottomEnabled),
        _enumR(FieldToCode.expanderBottomWidth, measurement.expanderOption.bottomWidth),
        _textR(FieldToCode.expanderBottomLength, measurement.expanderOption.bottomLength),
        _textR(FieldToCode.expanderBottomQuantity, measurement.expanderOption.bottomAmount),
        _boolR(FieldToCode.parapetReinforcement, measurement.parapetReinforcement),
        _enumR(FieldToCode.windowsillExtension, measurement.windowsillExtension),
        _boolR(FieldToCode.slabExtension, measurement.slabExtension),
        _boolR(FieldToCode.extensionSheathing, measurement.extensionSheathing),
        _boolR(FieldToCode.insulation, measurement.insulation),
      ],
    );

CustomFieldDTO _textR(FieldToCode mapper, String value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );

CustomFieldDTO _boolR(FieldToCode mapper, bool value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );

CustomFieldDTO _enumR<T extends ParamEnum>(FieldToCode mapper, T value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value.localizedName)],
    );

CustomFieldDTO _urlR(FieldToCode mapper, String value) => CustomFieldDTO(
      fieldCode: mapper.code,
      values: [CustomFieldValue(value: value)],
    );

/* ---------------------------------------------------------*/
/* ----------------- DTO TO DOMAIN MAPPER ----------------- */
/* ---------------------------------------------------------*/

Measurement convertToDomain(MeasurementDTO dto) => Measurement(
      // id
      // localId
      // scheme
      // photoPath
      scheme: null,
      photoPath: null,
      id: '',
      remoteId: dto.id,
      date: dto.createdAt != null
          ? DateTime.fromMillisecondsSinceEpoch(dto.createdAt! * 1000)
          : DateTime.now(),
      clientName: _textD(FieldToCode.clientName, dto.customFieldsValues),
      cost: _textD(FieldToCode.cost, dto.customFieldsValues),
      prepayment: _textD(FieldToCode.prepayment, dto.customFieldsValues),
      phoneNumberMain: _textD(FieldToCode.phoneNumberMain, dto.customFieldsValues),
      phoneNumberAdditional: _textD(FieldToCode.phoneNumberAdditional, dto.customFieldsValues),
      howDiscovered: _textD(FieldToCode.howDiscovered, dto.customFieldsValues),
      comment: _textD(FieldToCode.comment, dto.customFieldsValues),
      measurer: _textD(FieldToCode.measurer, dto.customFieldsValues),
      city: _textD(FieldToCode.city, dto.customFieldsValues),
      district: _textD(FieldToCode.district, dto.customFieldsValues),
      street: _textD(FieldToCode.street, dto.customFieldsValues),
      building: _textD(FieldToCode.building, dto.customFieldsValues),
      residentialComplex: _textD(FieldToCode.residentialComplex, dto.customFieldsValues),
      block: _textD(FieldToCode.block, dto.customFieldsValues),
      entrance: _textD(FieldToCode.entrance, dto.customFieldsValues),
      doorphone: _textD(FieldToCode.doorphone, dto.customFieldsValues),
      floor: _textD(FieldToCode.floor, dto.customFieldsValues),
      apartment: _textD(FieldToCode.apartment, dto.customFieldsValues),
      housingCoopNumber: _textD(FieldToCode.housingCoopNumber, dto.customFieldsValues),
      buildingType: _enumD(FieldToCode.buildingType, dto.customFieldsValues, BuildingType.values),
      flatStatus: _enumD(FieldToCode.flatStatus, dto.customFieldsValues, FlatStatus.values),
      elevator: _enumD(FieldToCode.elevator, dto.customFieldsValues, ElevatorOptions.values),
      assembly: _enumD(FieldToCode.assembly, dto.customFieldsValues, AssemblyType.values),
      disassembly: _boolD(FieldToCode.disassembly, dto.customFieldsValues),
      screedDisassembly: _boolD(FieldToCode.screedDisassembly, dto.customFieldsValues),
      gridDisassembly: _boolD(FieldToCode.gridDisassembly, dto.customFieldsValues),
      roofDisassembly: _boolD(FieldToCode.roofDisassembly, dto.customFieldsValues),
      delivery: _boolD(FieldToCode.delivery, dto.customFieldsValues),
      unloading: _boolD(FieldToCode.unloading, dto.customFieldsValues),
      garbageRemoval: _boolD(FieldToCode.garbageRemoval, dto.customFieldsValues),
      sealing: _boolD(FieldToCode.sealing, dto.customFieldsValues),
      vacuumCleaner: _boolD(FieldToCode.vacuumCleaner, dto.customFieldsValues),
      estimatedAssemblyTime: _textD(FieldToCode.estimatedAssemblyTime, dto.customFieldsValues),
      quarterSize: _textD(FieldToCode.quarterSize, dto.customFieldsValues),
      quarterPosition:
          _enumD(FieldToCode.quarterPosition, dto.customFieldsValues, QuarterPosition.values),
      staticCalculation: _boolD(FieldToCode.staticCalculation, dto.customFieldsValues),
      profileSystem: _textD(FieldToCode.profileSystem, dto.customFieldsValues),
      doorOpeningType:
          _enumD(FieldToCode.doorOpeningType, dto.customFieldsValues, DoorOpeningType.values),
      doorstep: _enumD(FieldToCode.doorstep, dto.customFieldsValues, DoorstepOption.values),
      doorstepType: _enumD(FieldToCode.doorstepType, dto.customFieldsValues, DoorstepType.values),
      laminationInternal: _textD(FieldToCode.laminationInternal, dto.customFieldsValues),
      laminationExternal: _textD(FieldToCode.laminationExternal, dto.customFieldsValues),
      rubberColor: _enumD(FieldToCode.rubberColor, dto.customFieldsValues, RubberColor.values),
      standProfile: _enumD(FieldToCode.standProfile, dto.customFieldsValues, StandProfile.values),
      glassUnit: _textD(FieldToCode.glassUnit, dto.customFieldsValues),
      panelType: _enumD(FieldToCode.panelType, dto.customFieldsValues, PanelType.values),
      panelThickness:
          _enumD(FieldToCode.panelThickness, dto.customFieldsValues, PanelThickness.values),
      furniture: _textD(FieldToCode.furniture, dto.customFieldsValues),
      windowsillType:
          _enumD(FieldToCode.windowsillType, dto.customFieldsValues, WindowsillType.values),
      windowsillDepth:
          _enumD(FieldToCode.windowsillDepth, dto.customFieldsValues, WindowsillDepth.values),
      windowsillSize: _textD(FieldToCode.windowsillSize, dto.customFieldsValues),
      windowsillConnector: _enumD(
          FieldToCode.windowsillConnector, dto.customFieldsValues, WindowsillConnector.values),
      windowsillColor: _textD(FieldToCode.windowsillColor, dto.customFieldsValues),
      windowsillAssembly: _boolD(FieldToCode.windowsillAssembly, dto.customFieldsValues),
      drainageDepth: _textD(FieldToCode.drainageDepth, dto.customFieldsValues),
      drainageWidth: _textD(FieldToCode.drainageWidth, dto.customFieldsValues),
      drainageColor: _textD(FieldToCode.drainageColor, dto.customFieldsValues),
      drainageEndCap: _boolD(FieldToCode.drainageEndCap, dto.customFieldsValues),
      canopyType: _textD(FieldToCode.canopyType, dto.customFieldsValues),
      canopySize: _textD(FieldToCode.canopySize, dto.customFieldsValues),
      canopyColor: _textD(FieldToCode.canopyColor, dto.customFieldsValues),
      slopeDepth: _textD(FieldToCode.slopeDepth, dto.customFieldsValues),
      slopeLength: _textD(FieldToCode.slopeLength, dto.customFieldsValues),
      slopeQuantity: _textD(FieldToCode.slopeQuantity, dto.customFieldsValues),
      expanderOption: ExpanderOption(
        rightEnabled: _boolD(FieldToCode.expanderRight, dto.customFieldsValues),
        rightWidth:
            _enumD(FieldToCode.expanderRightWidth, dto.customFieldsValues, ExpanderWidth.values),
        rightLength: _textD(FieldToCode.expanderRightLength, dto.customFieldsValues),
        rightAmount: _textD(FieldToCode.expanderRightQuantity, dto.customFieldsValues),
        leftEnabled: _boolD(FieldToCode.expanderLeft, dto.customFieldsValues),
        leftWidth:
            _enumD(FieldToCode.expanderLeftWidth, dto.customFieldsValues, ExpanderWidth.values),
        leftLength: _textD(FieldToCode.expanderLeftLength, dto.customFieldsValues),
        leftAmount: _textD(FieldToCode.expanderLeftQuantity, dto.customFieldsValues),
        topEnabled: _boolD(FieldToCode.expanderTop, dto.customFieldsValues),
        topWidth:
            _enumD(FieldToCode.expanderTopWidth, dto.customFieldsValues, ExpanderWidth.values),
        topLength: _textD(FieldToCode.expanderTopLength, dto.customFieldsValues),
        topAmount: _textD(FieldToCode.expanderTopQuantity, dto.customFieldsValues),
        bottomEnabled: _boolD(FieldToCode.expanderBottom, dto.customFieldsValues),
        bottomWidth:
            _enumD(FieldToCode.expanderBottomWidth, dto.customFieldsValues, ExpanderWidth.values),
        bottomLength: _textD(FieldToCode.expanderBottomLength, dto.customFieldsValues),
        bottomAmount: _textD(FieldToCode.expanderBottomQuantity, dto.customFieldsValues),
      ),
      parapetReinforcement: _boolD(FieldToCode.parapetReinforcement, dto.customFieldsValues),
      windowsillExtension: _enumD(
          FieldToCode.windowsillExtension, dto.customFieldsValues, WindowsillExtension.values),
      slabExtension: _boolD(FieldToCode.slabExtension, dto.customFieldsValues),
      extensionSheathing: _boolD(FieldToCode.extensionSheathing, dto.customFieldsValues),
      insulation: _boolD(FieldToCode.insulation, dto.customFieldsValues),
    );

String _textD(FieldToCode mapper, List<CustomFieldDTO>? customFields) =>
    customFields?.firstWhereOrNull((e) => e.fieldCode == mapper.code)?.values?.firstOrNull?.value
        as String? ??
    '';

bool _boolD(FieldToCode mapper, List<CustomFieldDTO>? customFields) =>
    customFields?.firstWhereOrNull((e) => e.fieldCode == mapper.code)?.values?.firstOrNull?.value
        as bool? ??
    false;

T _enumD<T extends ParamEnum>(
  FieldToCode mapper,
  List<CustomFieldDTO>? customFields,
  List<T> enumValues,
) {
  final value = customFields
          ?.firstWhereOrNull((e) => e.fieldCode == mapper.code)
          ?.values
          ?.firstOrNull
          ?.value as String? ??
      Localization.l10n.none;

  return enumValues.firstWhereOrNull((e) => e.localizedName == value) ?? enumValues.first;
}
