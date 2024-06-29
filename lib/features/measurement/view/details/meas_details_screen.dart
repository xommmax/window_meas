import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/meas_details_app_bar.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_state.dart';
import 'package:window_meas/features/measurement/view/details/meas_details_list.dart';

class MeasurementDetailsScreen extends StatelessWidget {
  const MeasurementDetailsScreen(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => BlocProvider<MeasurementDetailsCubit>(
        create: (ctx) => getIt()..setMeasurement(measurement),
        child: const MeasurementDetailsView(),
      );
}

class MeasurementDetailsView extends StatelessWidget {
  const MeasurementDetailsView({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<MeasurementDetailsCubit, MeasurementDetailsState>(
        builder: (context, state) => Scaffold(
          appBar: MeasurementDetailsAppBar(state.measurement, state.isAdminModeEnabled),
          backgroundColor: Colors.white,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                if (state.measurement != null) MeasurementDetailsList(state.measurement!),
                if (state.isLoading)
                  ColoredBox(
                    color: Colors.black.withOpacity(0.3),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
              ],
            ),
          ),
        ),
        listener: (context, state) {
          if (state.message != null) {
            Fluttertoast.showToast(msg: state.message!);
          }
        },
      );
}
