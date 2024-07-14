import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/address_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/other_work_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/position_info_section.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/building_info_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/sections/client_info_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/meas_param_section.dart';
import 'package:window_meas/features/measurement/view/details/widgets/workaround.dart';

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
  List<bool> isExpanded = [];

  @override
  void initState() {
    super.initState();
    isExpanded = List.filled(4 + widget.measurement.positions.length, true);
  }

  @override
  void didUpdateWidget(covariant MeasurementDetailsList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.measurement.positions.length > oldWidget.measurement.positions.length) {
      setState(() => isExpanded = [
            ...isExpanded,
            ...List.filled(
              widget.measurement.positions.length - oldWidget.measurement.positions.length,
              true,
            ),
          ]);
    } else if (widget.measurement.positions.length < oldWidget.measurement.positions.length) {
      setState(() => isExpanded = isExpanded.sublist(0, 4 + widget.measurement.positions.length));
    }
  }

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
                  title: '${context.l10n.otherWork}:',
                  body: OtherWorkSection(widget.measurement),
                  isExpanded: isExpanded[3],
                ),
                for (int i = 0; i < widget.measurement.positions.length; i++)
                  MeasurementParamSection(
                    title: '${context.l10n.position} ${i + 1}:',
                    body: PositionInfoSection(
                      widget.measurement.positions[i],
                      key: ValueKey(widget.measurement.positions[i].id),
                    ),
                    isExpanded: isExpanded[4 + i],
                    trailing: PopupMenuButton(
                      icon: const Icon(Icons.more_vert, color: Colors.white),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: context.l10n.add,
                          child: Text(context.l10n.add),
                        ),
                        PopupMenuItem(
                          value: context.l10n.duplicate,
                          child: Text(context.l10n.duplicate),
                        ),
                        PopupMenuItem(
                          value: context.l10n.delete,
                          child: Text(context.l10n.delete),
                        ),
                      ],
                      onSelected: (String value) {
                        if (value == context.l10n.add) {
                          context.read<MeasurementDetailsCubit>().addPosition();
                        } else if (value == context.l10n.duplicate) {
                          context
                              .read<MeasurementDetailsCubit>()
                              .duplicatePosition(widget.measurement.positions[i].id);
                        } else if (value == context.l10n.delete) {
                          context
                              .read<MeasurementDetailsCubit>()
                              .deletePosition(widget.measurement.positions[i].id);
                        }
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
}
