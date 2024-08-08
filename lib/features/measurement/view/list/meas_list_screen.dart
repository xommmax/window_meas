import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/list/meas_list_item.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/measurement/cubit/meas_list_state.dart';
import 'package:window_meas/l10n/localization.dart';

class MeasurementListScreen extends StatelessWidget {
  const MeasurementListScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<MeasurementListCubit>(
        create: (context) => getIt(),
        child: const MeasurementListView(),
      );
}

class MeasurementListView extends StatelessWidget {
  const MeasurementListView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<MeasurementListCubit, MeasurementListState>(
        builder: (context, state) {
          Widget listWidget = _MeasurementList(state.measurements, state.isAdminModeEnabled);

          return Scaffold(
            body: SafeArea(
              child: listWidget,
            ),
            floatingActionButton: !state.isAdminModeEnabled
                ? FloatingActionButton(
                    onPressed: () => _addMeasurement(context),
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    child: const Icon(Icons.add),
                  )
                : null,
          );
        },
      );

  Future<void> _addMeasurement(BuildContext context) async {
    final measurement = await context.read<MeasurementListCubit>().createMeasurement();

    if (context.mounted) {
      context.push(
        '/meas_details',
        extra: {'measurement': measurement},
      );
    }
  }
}

class _MeasurementList extends StatelessWidget {
  const _MeasurementList(this.measurements, this.isAdminModeEnabled);

  final List<Measurement> measurements;
  final bool isAdminModeEnabled;

  @override
  Widget build(BuildContext context) => measurements.isEmpty
      ? Center(
          child: Text(
            context.l10n.measListEmpty,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        )
      : ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          itemCount: measurements.length,
          itemBuilder: (context, index) => MeasurementItem(measurements[index], isAdminModeEnabled),
        );
}
