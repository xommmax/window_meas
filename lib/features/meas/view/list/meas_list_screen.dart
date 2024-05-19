import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:window_meas/l10n/localization.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/meas/cubit/meas_list_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_list_state.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

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
        onPressed: () => _addMeasurement(context),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ));

  Future<void> _addMeasurement(BuildContext context) async {
    final id = await context.read<MeasurementListCubit>().addNewMeasurement();

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

class MeasurementItem extends StatelessWidget {
  const MeasurementItem(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          onTap: () => context.push('/meas_details/${measurement.id}'),
          child: Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
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
                      top: Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${context.l10n.measurement} №${measurement.innerId?.toString().padLeft(4, '0') ?? ''}',
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
                      Text(measurement.clientName),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const FaIcon(FontAwesomeIcons.locationDot, size: 16, color: AppColors.secondary),
                      const SizedBox(width: 12),
                      Text(measurement.address),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
