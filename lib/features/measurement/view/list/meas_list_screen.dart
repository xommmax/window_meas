import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/view/company_header.dart';
import 'package:window_meas/features/measurement/view/list/meas_list_item.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_state.dart';

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
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CompanyHeader(),
            Expanded(child: MeasurementList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addMeasurement(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _addMeasurement(BuildContext context) async {
    final id = await context.read<MeasurementListCubit>().createMeasurement();

    if (context.mounted) {
      context.push('/meas_details/$id');
    }
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
