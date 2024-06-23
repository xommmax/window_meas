import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
import 'package:window_meas/features/measurement/view/list/meas_list_item.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_state.dart';
import 'package:window_meas/scheme_builder/scheme_builder.dart';

class MeasurementListScreen extends StatelessWidget {
  const MeasurementListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<MeasurementListCubit>(
        create: (context) => getIt()..watchMeasurements(),
        child: const MeasurementListView(),
      );
}

class MeasurementListView extends StatelessWidget {
  const MeasurementListView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: double.infinity,
              color: AppColors.secondary,
              child: SvgPicture.asset(
                'assets/white_logo.svg',
                width: 200,
              ),
            ),
            const Expanded(child: MeasurementList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _saveMeasurement(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _saveMeasurement(BuildContext context) async {
    // final id = await context.read<MeasurementListCubit>().saveMeasurement();

    // if (context.mounted) {
    //   context.push('/meas_details/$id');
    // }
    SchemeBuilder().initScheme();
  }
}

class MeasurementList extends StatelessWidget {
  const MeasurementList({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<MeasurementListCubit, MeasurementListState>(
        builder: (context, state) => ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          itemCount: state.measurements.length,
          itemBuilder: (context, index) => MeasurementItem(state.measurements[index]),
        ),
      );
}
