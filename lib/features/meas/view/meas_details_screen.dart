import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/ext/context_ext.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/cubit/meas_details_state.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';

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
          ),
        ),
      );
}

class MeasurementDetailsList extends StatelessWidget {
  const MeasurementDetailsList(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _InputItem(
          context.l10n.clientName,
          measurement.clientName,
          onChanged: (s) =>
              context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(clientName: s)),
        ),
        const Divider(),
        _InputItem(
          context.l10n.address,
          measurement.address,
          onChanged: (s) => context.read<MeasurementDetailsCubit>().updateMeasurement(measurement.copyWith(address: s)),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${context.l10n.scheme}: ',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: Center(
                  child: InkWell(
                    child: const FaIcon(FontAwesomeIcons.squarePlus),
                    onTap: () => context.push('/editor'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InputItem extends StatefulWidget {
  const _InputItem(this.title, this.value, {this.onChanged});

  final String title;
  final String? value;
  final Function(String)? onChanged;

  @override
  State<_InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<_InputItem> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.value);
    controller.addListener(() => widget.onChanged?.call(controller.text));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '${widget.title}: ',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: null,
              textCapitalization: TextCapitalization.words,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
