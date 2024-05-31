import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/meas/view/details/meas_details_app_bar.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/view/details/meas_details_list.dart';

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
          appBar: MeasurementDetailsAppBar(state.measurement),
          body: SafeArea(
            bottom: false,
            child: state.measurement != null
                ? MeasurementDetailsList(state.measurement!)
                : const Center(child: CircularProgressIndicator()),
          ),
        ),
      );
}
