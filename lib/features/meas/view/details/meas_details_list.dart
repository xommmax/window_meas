import 'package:flutter/material.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/address_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/other_work_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/position_info_section.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/building_info_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/client_info_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/meas_param_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/workaround.dart';

class MeasurementDetailsList extends StatefulWidget {
  const MeasurementDetailsList(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  State<MeasurementDetailsList> createState() => _MeasurementDetailsListState();
}

class _MeasurementDetailsListState extends State<MeasurementDetailsList> {
  final List<bool> isExpanded = List.filled(5, true);

  @override
  Widget build(BuildContext context) => WorkaroundForExpandIcon(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100, top: 20),
            child: ExpansionPanelList(
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (i, exp) => setState(() => isExpanded[i] = exp),
              children: [
                MeasurementParamSection(
                  title: '${context.l10n.clientInfo}:',
                  body: ClientInfoSection(widget.measurement),
                  isExpanded: isExpanded[0],
                ),
                MeasurementParamSection(
                  title: '${context.l10n.address}:',
                  body: AddressSection(widget.measurement),
                  isExpanded: isExpanded[1],
                ),
                MeasurementParamSection(
                  title: '${context.l10n.buildingInfo}:',
                  body: BuildingInfoSection(widget.measurement),
                  isExpanded: isExpanded[2],
                ),
                MeasurementParamSection(
                  title: '${context.l10n.position}:',
                  body: PositionInfoSection(widget.measurement),
                  isExpanded: isExpanded[3],
                ),
                MeasurementParamSection(
                  title: '${context.l10n.otherWork}:',
                  body: OtherWorkSection(widget.measurement),
                  isExpanded: isExpanded[4],
                )
              ],
            ),
          ),
        ),
      );
}
