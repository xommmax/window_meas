import 'package:window_meas/common/ext/string_ext.dart';
import 'package:window_meas/features/meas/data/model/custom_field_dto.dart';
import 'package:window_meas/features/meas/data/model/custom_field_value_dto.dart';
import 'package:window_meas/features/meas/data/params/assembly_type_enum.dart';
import 'package:window_meas/features/meas/data/params/building_type_enum.dart';
import 'package:window_meas/features/meas/data/params/door_opening_type_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_option_enum.dart';
import 'package:window_meas/features/meas/data/params/doorstep_type_enum.dart';
import 'package:window_meas/features/meas/data/params/elevator_options_enum.dart';
import 'package:window_meas/features/meas/data/params/expander_option.dart';
import 'package:window_meas/features/meas/data/params/flat_status_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_thickness_enum.dart';
import 'package:window_meas/features/meas/data/params/panel_type_enum.dart';
import 'package:window_meas/features/meas/data/params/param_enum.dart';
import 'package:window_meas/features/meas/data/params/profile_system_enum.dart';
import 'package:window_meas/features/meas/data/params/quarter_position_enum.dart';
import 'package:window_meas/features/meas/data/params/rubber_color_enum.dart';
import 'package:window_meas/features/meas/data/params/stand_profile_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_connector_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_depth_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/meas/data/params/windowsill_type_enum.dart';
import 'package:window_meas/l10n/localization.dart';

class CustomFieldsBuilder {
  CustomFieldsBuilder();

  int sortCounter = 0;

  List<CustomFieldDTO> getInitCustomFields() {
    final l10n = Localization.l10n;
    List<CustomFieldDTO> customFields = [];

    // Client Info
    customFields.addAll([
      _text(l10n.clientName),
      _text(l10n.cost),
      _text(l10n.prepayment),
      _text('${l10n.phoneNumberMain} ${l10n.phoneNumber}'),
      _text('${l10n.phoneNumberAdditional} ${l10n.phoneNumber}'),
      _text(l10n.howDiscovered),
      _text(l10n.comment),
      _text(l10n.measurer),
    ]);

    // Address
    customFields.addAll([
      _text(l10n.city),
      _text(l10n.district),
      _text(l10n.street),
      _text(l10n.building),
      _text(l10n.residentialComplex),
      _text(l10n.block),
      _text(l10n.entrance),
      _text(l10n.doorphone),
      _text(l10n.floor),
      _text(l10n.apartment),
      _text(l10n.housingCoopNumber),
    ]);

    // Building Info
    customFields.addAll([
      _enum(l10n.buildingType, BuildingType.values),
      _enum(l10n.flatStatus, FlatStatus.values),
      _enum(l10n.elevator, ElevatorOptions.values),
      _enum(l10n.assembly, AssemblyType.values),
      _bool(l10n.disassembly),
      _bool(l10n.screedDisassembly),
      _bool(l10n.gridDisassembly),
      _bool(l10n.roofDisassembly),
      _bool(l10n.delivery),
      _bool(l10n.unloading),
      _bool(l10n.garbageRemoval),
      _bool(l10n.sealing),
      _bool(l10n.vacuumCleaner),
      _text(l10n.estimatedAssemblyTime),
    ]);

    // Position info
    customFields.addAll([
      _text('${l10n.quarter} ${l10n.size}'),
      _enum('${l10n.quarter} ${l10n.quarterPosition}', QuarterPosition.values),
      _bool(l10n.staticCalculation),
      _enum(l10n.profileSystem, ProfileSystem.values),
      _enum('${l10n.door} ${l10n.doorOpeningType}', DoorOpeningType.values),
      _enum('${l10n.door} ${l10n.doorstep}', DoorstepOption.values),
      _enum('${l10n.door} ${l10n.doorstepType}', DoorstepType.values),
      _text('${l10n.lamination} ${l10n.laminationInternal}'),
      _text('${l10n.lamination} ${l10n.laminationExternal}'),
      _enum(l10n.rubberColor, RubberColor.values),
      _enum(l10n.standProfile, StandProfile.values),
      _text(l10n.glassUnit),
      _enum('${l10n.panel} ${l10n.type}', PanelType.values),
      _enum('${l10n.panel} ${l10n.thickness}', PanelThickness.values),
      _text(l10n.furniture),
      _enum('${l10n.windowsill} ${l10n.type}', WindowsillType.values),
      _enum('${l10n.windowsill} ${l10n.depth}', WindowsillDepth.values),
      _text('${l10n.windowsill} ${l10n.size}'),
      _enum('${l10n.windowsill} ${l10n.windowsillConnector}', WindowsillConnector.values),
      _text('${l10n.windowsill} ${l10n.color}'),
      _bool('${l10n.windowsill} ${l10n.assembly}'),
      _text('${l10n.drainage} ${l10n.depth}'),
      _text('${l10n.drainage} ${l10n.width}'),
      _text('${l10n.drainage} ${l10n.color}'),
      _bool('${l10n.drainage} ${l10n.drainageEndCap}'),
      _text('${l10n.canopy} ${l10n.type}'),
      _text('${l10n.canopy} ${l10n.size}'),
      _text('${l10n.canopy} ${l10n.color}'),
      _text('${l10n.slope} ${l10n.depth}'),
      _text('${l10n.slope} ${l10n.length}'),
      _text('${l10n.slope} ${l10n.quantity}'),
      _bool('${l10n.expander} ${l10n.expanderRight}'),
      _enum('${l10n.expander} ${l10n.expanderRight} ${l10n.width}', ExpanderWidth.values),
      _text('${l10n.expander} ${l10n.expanderRight} ${l10n.length}'),
      _text('${l10n.expander} ${l10n.expanderRight} ${l10n.quantity}'),
      _bool('${l10n.expander} ${l10n.expanderLeft}'),
      _enum('${l10n.expander} ${l10n.expanderLeft} ${l10n.width}', ExpanderWidth.values),
      _text('${l10n.expander} ${l10n.expanderLeft} ${l10n.length}'),
      _text('${l10n.expander} ${l10n.expanderLeft} ${l10n.quantity}'),
      _bool('${l10n.expander} ${l10n.expanderTop}'),
      _enum('${l10n.expander} ${l10n.expanderTop} ${l10n.width}', ExpanderWidth.values),
      _text('${l10n.expander} ${l10n.expanderTop} ${l10n.length}'),
      _text('${l10n.expander} ${l10n.expanderTop} ${l10n.quantity}'),
      _bool('${l10n.expander} ${l10n.expanderBottom}'),
      _enum('${l10n.expander} ${l10n.expanderBottom} ${l10n.width}', ExpanderWidth.values),
      _text('${l10n.expander} ${l10n.expanderBottom} ${l10n.length}'),
      _text('${l10n.expander} ${l10n.expanderBottom} ${l10n.quantity}'),
    ]);

    // Other work
    customFields.addAll([
      _bool(l10n.parapetReinforcement),
      _enum(l10n.windowsillExtension, WindowsillExtension.values),
      _bool(l10n.slabExtension),
      _bool(l10n.extensionSheathing),
      _bool(l10n.insulation),
    ]);

    return customFields;
  }

  CustomFieldDTO _text(String name) => CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'text',
        sort: sortCounter++,
      );

  CustomFieldDTO _bool(String name) => CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'checkbox',
        sort: sortCounter++,
      );

  CustomFieldDTO _enum<T extends ParamEnum>(String name, List<T> values) => CustomFieldDTO(
        name: name.toCapitalized(),
        type: 'select',
        enums: values.map((e) => CustomFieldValue(value: e.localizedName)).toList(),
        sort: sortCounter++,
      );
}
