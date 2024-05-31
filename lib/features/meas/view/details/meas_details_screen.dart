import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/meas/view/details/confirmation_dialog.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/address_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/other_work_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/position_info_section.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/building_info_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/sections/client_info_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/meas_param_section.dart';
import 'package:window_meas/features/meas/view/details/widgets/workaround.dart';

class MeasurementDetailsScreen extends StatelessWidget {
  const MeasurementDetailsScreen(this.measurementId, {super.key});

  final String measurementId;

  @override
  Widget build(BuildContext context) => BlocProvider<MeasurementDetailsCubit>(
        create: (ctx) => getIt()..loadMeasurement(measurementId),
        child: const MeasurementDetailsView(),
      );
}

class MeasurementDetailsView extends StatelessWidget {
  const MeasurementDetailsView({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<MeasurementDetailsCubit, MeasurementDetailsState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text(
              '${context.l10n.measurement} №${state.measurement?.innerId?.toString().padLeft(4, '0') ?? ''}',
            ),
            actions: [
              PopupMenuButton<String>(
                onSelected: (s) async {
                  if (s == context.l10n.generatePdf) {
                    await context.read<MeasurementDetailsCubit>().generatePdf();
                  } else if (s == context.l10n.shareCrm) {
                    await context.read<MeasurementDetailsCubit>().shareCrm();
                  } else if (s == context.l10n.delete) {
                    final shouldDelete = await ConfirmationDialog.show(
                      context,
                      context.l10n.deleteMeasurement,
                      context.l10n.deleteMeasurementDesc,
                    );
                    if (shouldDelete && context.mounted) {
                      await context.read<MeasurementDetailsCubit>().deleteMeasurement();
                      if (context.mounted) context.pop();
                    }
                  }
                },
                icon: const FaIcon(FontAwesomeIcons.ellipsisVertical),
                itemBuilder: (BuildContext context) => [
                  context.l10n.generatePdf,
                  context.l10n.shareCrm,
                  context.l10n.delete,
                ].map((e) => PopupMenuItem<String>(value: e, child: Text(e))).toList(),
              ),
            ],
          ),
          body: SafeArea(
            bottom: false,
            child: state.measurement != null
                ? MeasurementDetailsList(state.measurement!)
                : const Center(child: CircularProgressIndicator()),
          ),
        ),
      );
}

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
