import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/common/ext/context_ext.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

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
        onPressed: () => _addMeasurement(context),
        child: const Icon(Icons.add),
      ));

  void _addMeasurement(BuildContext context) {
    context.read<MeasurementListCubit>().addNewMeasurement();
    // context.go(location)
  }
}

class MeasurementList extends StatelessWidget {
  const MeasurementList({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<MeasurementListCubit, MeasurementListState>(
        builder: (context, state) => ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: state.measurements.length,
          itemBuilder: (context, index) {
            final measurement = state.measurements[index];
            return MeasurementItem(measurement);
          },
        ),
      );

  void _editMeasurement(BuildContext context, String id) {}
}

class MeasurementItem extends StatelessWidget {
  const MeasurementItem(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.secondary, AppColors.primary, AppColors.secondary],
                stops: [0.07, 0.70, 0.95],
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${context.l10n.measurement} ${measurement.innerId?.toString().padLeft(4, '0') ?? ''}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.clock, size: 16, color: AppColors.secondary),
                const SizedBox(width: 12),
                Text(DateFormat('dd.MM.yyyy, HH:mm').format(measurement.date)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.user, size: 16, color: AppColors.secondary),
                const SizedBox(width: 12),
                Text(measurement.clientName ?? ''),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.locationDot, size: 16, color: AppColors.secondary),
                const SizedBox(width: 12),
                Text(measurement.address ?? ''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
