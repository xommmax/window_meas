import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  Widget build(BuildContext context) => BlocBuilder<MeasurementDetailsCubit, MeasurementDetailsState>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            title: Text('${context.l10n.measurement} №${state.measurement?.innerId?.toString().padLeft(4, '0') ?? ''}'),
          ),
          body: SafeArea(
            child: state.measurement != null
                ? MeasurementDetailsList(state.measurement!)
                : const Center(child: CircularProgressIndicator()),
            bottom: false,
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
  final List<bool> isExpanded = List.filled(2, true);

  @override
  Widget build(BuildContext context) => WorkaroundForExpandIcon(
        child: SingleChildScrollView(
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
                title: '${context.l10n.buildingInfo}:',
                body: BuildingInfoSection(widget.measurement),
                isExpanded: isExpanded[1],
              ),
            ],
          ),
        ),
      );
}
