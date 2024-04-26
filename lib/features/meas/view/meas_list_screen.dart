import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';

class MeasurementListScreen extends StatelessWidget {
  const MeasurementListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<MeasurementListCubit>(
        create: (context) => getIt(),
        child: const MeasurementListView(),
      );
}

class MeasurementListView extends StatelessWidget {
  const MeasurementListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/logo.svg',
              width: 200,
            ),
            Text('Allo'),
            const Expanded(child: MeasurementList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addMeasurement(context),
        child: const Icon(Icons.add),
      ));

  void _addMeasurement(BuildContext context) {
    context.read<MeasurementListCubit>().addNewMeasurement();
  }
}

class MeasurementList extends StatelessWidget {
  const MeasurementList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MeasurementListCubit, MeasurementListState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.measurements.length,
          itemBuilder: (context, index) {
            final measurement = state.measurements[index];
            return ListTile(
              title: Text(measurement.clientName ?? ''),
              subtitle: Text(measurement.address ?? ''),
              onTap: () => _editMeasurement(context, measurement.id),
            );
          },
        );
      },
    );
  }

  void _editMeasurement(BuildContext context, String id) {}
}
