import 'package:collection/collection.dart';
import 'package:window_meas/common/ext/string_ext.dart';
import 'package:window_meas/features/measurement/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/building_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/measurement/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/measurement/data/params/expander_option.dart';
import 'package:window_meas/features/measurement/data/params/flat_status_enum.dart';
import 'package:window_meas/features/measurement/data/params/panel_thickness_enum.dart';
import 'package:window_meas/features/measurement/data/params/panel_type_enum.dart';
import 'package:window_meas/features/measurement/data/params/param_enum.dart';
import 'package:window_meas/features/measurement/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/measurement/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/measurement/data/params/stand_profile_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/data/params/windowsill_type_enum.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_value_dto.dart';
import 'package:window_meas/features/measurement/data/remote/scheme_builder/field_code_mapper.dart';
import 'package:window_meas/l10n/localization.dart';

class CustomFieldsBuilder {
  CustomFieldsBuilder();

  int sortCounter = 0;

  List<CustomFieldDTO> getInitCustomFields() {
    final l10n = Localization.l10n;
    List<CustomFieldDTO> customFields = [];

    // Client Info
    customFields.addAll([
      _file(l10n.pdfFile, FieldToCode.pdfFile),
      _text(l10n.clientName, FieldToCode.clientName),
      _text(l10n.cost, FieldToCode.cost),
      _text(l10n.prepayment, FieldToCode.prepayment),
      _text('${l10n.phoneNumberMain} ${l10n.phoneNumber}', FieldToCode.phoneNumberMain),
      _text('${l10n.phoneNumberAdditional} ${l10n.phoneNumber}', FieldToCode.phoneNumberAdditional),
      _text(l10n.howDiscovered, FieldToCode.howDiscovered),
      _text(l10n.comment, FieldToCode.comment),
      _text(l10n.measurer, FieldToCode.measurer),
    ]);

    // Address
    customFields.addAll([
      _text(l10n.city, FieldToCode.city),
      _text(l10n.district, FieldToCode.district),
      _text(l10n.street, FieldToCode.street),
      _text(l10n.building, FieldToCode.building),
      _text(l10n.residentialComplex, FieldToCode.residentialComplex),
      _text(l10n.block, FieldToCode.block),
      _text(l10n.entrance, FieldToCode.entrance),
      _text(l10n.doorphone, FieldToCode.doorphone),
      _text(l10n.floor, FieldToCode.floor),
      _text(l10n.apartment, FieldToCode.apartment),
      _text(l10n.housingCoopNumber, FieldToCode.housingCoopNumber),
    ]);

    // Building Info
    customFields.addAll([
      _enum(l10n.buildingType, BuildingType.values, FieldToCode.buildingType),
      _enum(l10n.flatStatus, FlatStatus.values, FieldToCode.flatStatus),
      _enum(l10n.elevator, ElevatorOptions.values, FieldToCode.elevator),
      _enum(l10n.assembly, AssemblyType.values, FieldToCode.assembly),
      _bool(l10n.disassembly, FieldToCode.disassembly),
      _bool(l10n.screedDisassembly, FieldToCode.screedDisassembly),
      _bool(l10n.gridDisassembly, FieldToCode.gridDisassembly),
      _bool(l10n.roofDisassembly, FieldToCode.roofDisassembly),
      _bool(l10n.delivery, FieldToCode.delivery),
      _bool(l10n.unloading, FieldToCode.unloading),
      _bool(l10n.garbageRemoval, FieldToCode.garbageRemoval),
      _bool(l10n.sealing, FieldToCode.sealing),
      _bool(l10n.vacuumCleaner, FieldToCode.vacuumCleaner),
      _text(l10n.estimatedAssemblyTime, FieldToCode.estimatedAssemblyTime),
    ]);

    // Position info
    customFields.addAll([
      _text('${l10n.quarter} ${l10n.size}', FieldToCode.quarterSize),
      _enum(
        '${l10n.quarter} ${l10n.quarterPosition}',
        QuarterPosition.values,
        FieldToCode.quarterPosition,
      ),
      _bool(l10n.staticCalculation, FieldToCode.staticCalculation),
      _text(l10n.profileSystem, FieldToCode.profileSystem),
      _enum(
        '${l10n.door} ${l10n.doorOpeningType}',
        DoorOpeningType.values,
        FieldToCode.doorOpeningType,
      ),
      _enum('${l10n.door} ${l10n.doorstep}', DoorstepOption.values, FieldToCode.doorstep),
      _enum('${l10n.door} ${l10n.doorstepType}', DoorstepType.values, FieldToCode.doorstepType),
      _text('${l10n.lamination} ${l10n.laminationInternal}', FieldToCode.laminationInternal),
      _text('${l10n.lamination} ${l10n.laminationExternal}', FieldToCode.laminationExternal),
      _enum(l10n.rubberColor, RubberColor.values, FieldToCode.rubberColor),
      _enum(l10n.standProfile, StandProfile.values, FieldToCode.standProfile),
      _text(l10n.glassUnit, FieldToCode.glassUnit),
      _enum('${l10n.panel} ${l10n.type}', PanelType.values, FieldToCode.panelType),
      _enum('${l10n.panel} ${l10n.thickness}', PanelThickness.values, FieldToCode.panelThickness),
      _text(l10n.furniture, FieldToCode.furniture),
      _enum('${l10n.windowsill} ${l10n.type}', WindowsillType.values, FieldToCode.windowsillType),
      _enum(
        '${l10n.windowsill} ${l10n.depth}',
        WindowsillDepth.values,
        FieldToCode.windowsillDepth,
      ),
      _text('${l10n.windowsill} ${l10n.size}', FieldToCode.windowsillSize),
      _enum(
        '${l10n.windowsill} ${l10n.windowsillConnector}',
        WindowsillConnector.values,
        FieldToCode.windowsillConnector,
      ),
      _text('${l10n.windowsill} ${l10n.color}', FieldToCode.windowsillColor),
      _bool('${l10n.windowsill} ${l10n.assembly}', FieldToCode.windowsillAssembly),
      _text('${l10n.drainage} ${l10n.depth}', FieldToCode.drainageDepth),
      _text('${l10n.drainage} ${l10n.width}', FieldToCode.drainageWidth),
      _text('${l10n.drainage} ${l10n.color}', FieldToCode.drainageColor),
      _bool('${l10n.drainage} ${l10n.drainageEndCap}', FieldToCode.drainageEndCap),
      _text('${l10n.canopy} ${l10n.type}', FieldToCode.canopyType),
      _text('${l10n.canopy} ${l10n.size}', FieldToCode.canopySize),
      _text('${l10n.canopy} ${l10n.color}', FieldToCode.canopyColor),
      _text('${l10n.slope} ${l10n.depth}', FieldToCode.slopeDepth),
      _text('${l10n.slope} ${l10n.length}', FieldToCode.slopeLength),
      _text('${l10n.slope} ${l10n.quantity}', FieldToCode.slopeQuantity),
      _bool(
        '${l10n.expander} ${l10n.expanderRight}',
        FieldToCode.expanderRight,
      ),
      _enum(
        '${l10n.expander} ${l10n.expanderRight} ${l10n.width}',
        ExpanderWidth.values,
        FieldToCode.expanderRightWidth,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderRight} ${l10n.length}',
        FieldToCode.expanderRightLength,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderRight} ${l10n.quantity}',
        FieldToCode.expanderRightQuantity,
      ),
      _bool(
        '${l10n.expander} ${l10n.expanderLeft}',
        FieldToCode.expanderLeft,
      ),
      _enum(
        '${l10n.expander} ${l10n.expanderLeft} ${l10n.width}',
        ExpanderWidth.values,
        FieldToCode.expanderLeftWidth,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderLeft} ${l10n.length}',
        FieldToCode.expanderLeftLength,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderLeft} ${l10n.quantity}',
        FieldToCode.expanderLeftQuantity,
      ),
      _bool(
        '${l10n.expander} ${l10n.expanderTop}',
        FieldToCode.expanderTop,
      ),
      _enum(
        '${l10n.expander} ${l10n.expanderTop} ${l10n.width}',
        ExpanderWidth.values,
        FieldToCode.expanderTopWidth,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderTop} ${l10n.length}',
        FieldToCode.expanderTopLength,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderTop} ${l10n.quantity}',
        FieldToCode.expanderTopQuantity,
      ),
      _bool(
        '${l10n.expander} ${l10n.expanderBottom}',
        FieldToCode.expanderBottom,
      ),
      _enum(
        '${l10n.expander} ${l10n.expanderBottom} ${l10n.width}',
        ExpanderWidth.values,
        FieldToCode.expanderBottomWidth,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderBottom} ${l10n.length}',
        FieldToCode.expanderBottomLength,
      ),
      _text(
        '${l10n.expander} ${l10n.expanderBottom} ${l10n.quantity}',
        FieldToCode.expanderBottomQuantity,
      ),
    ]);

    // Other work
    customFields.addAll([
      _bool(l10n.parapetReinforcement, FieldToCode.parapetReinforcement),
      _enum(l10n.windowsillExtension, WindowsillExtension.values, FieldToCode.windowsillExtension),
      _bool(l10n.slabExtension, FieldToCode.slabExtension),
      _bool(l10n.extensionSheathing, FieldToCode.extensionSheathing),
      _bool(l10n.insulation, FieldToCode.insulation),
    ]);

    return customFields;
  }

  CustomFieldDTO _text(String name, FieldToCode mapper) => CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'text',
        sort: sortCounter++,
        code: mapper.code,
      );

  CustomFieldDTO _bool(String name, FieldToCode mapper) => CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'checkbox',
        sort: sortCounter++,
        code: mapper.code,
      );

  CustomFieldDTO _enum<T extends ParamEnum>(
    String name,
    List<T> values,
    FieldToCode mapper,
  ) =>
      CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'select',
        enums: values
            .mapIndexed((index, e) => CustomFieldValue(value: e.localizedName, sort: index))
            .toList(),
        sort: sortCounter++,
        code: mapper.code,
      );

  CustomFieldDTO _file(String name, FieldToCode mapper) => CustomFieldDTO(
        name: name,
        type: 'file',
        sort: sortCounter++,
        code: mapper.code,
      );
}
