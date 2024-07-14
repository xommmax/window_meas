import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander_option.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';

class ExpanderSection extends StatelessWidget {
  const ExpanderSection(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextItem(title: context.l10n.expanders),
        const Divider(),
        Subcategory(
          children: [
            SwitchItem(
              title: context.l10n.expanderRight,
              value: measurement.expanderOption.rightEnabled,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(
                        measurement.copyWith(
                            expanderOption: measurement.expanderOption
                                .copyWith(rightEnabled: b)),
                      ),
            ),
            const Divider(),
            if (measurement.expanderOption.rightEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: measurement.expanderOption.rightWidth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(rightWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: measurement.expanderOption.rightLength,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(rightLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: measurement.expanderOption.rightAmount,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(rightAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderLeft,
              value: measurement.expanderOption.leftEnabled,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(
                        measurement.copyWith(
                            expanderOption: measurement.expanderOption
                                .copyWith(leftEnabled: b)),
                      ),
            ),
            const Divider(),
            if (measurement.expanderOption.leftEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: measurement.expanderOption.leftWidth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(leftWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: measurement.expanderOption.leftLength,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(leftLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: measurement.expanderOption.leftAmount,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(leftAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderTop,
              value: measurement.expanderOption.topEnabled,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(
                        measurement.copyWith(
                            expanderOption: measurement.expanderOption
                                .copyWith(topEnabled: b)),
                      ),
            ),
            const Divider(),
            if (measurement.expanderOption.topEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: measurement.expanderOption.topWidth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(topWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: measurement.expanderOption.topLength,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(topLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: measurement.expanderOption.topAmount,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(topAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderBottom,
              value: measurement.expanderOption.bottomEnabled,
              onChanged: (b) =>
                  context.read<MeasurementDetailsCubit>().updateMeasurement(
                        measurement.copyWith(
                            expanderOption: measurement.expanderOption
                                .copyWith(bottomEnabled: b)),
                      ),
            ),
            const Divider(),
            if (measurement.expanderOption.bottomEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: measurement.expanderOption.bottomWidth,
                    onSelected: (e) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(bottomWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: measurement.expanderOption.bottomLength,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(bottomLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: measurement.expanderOption.bottomAmount,
                    onChanged: (s) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(
                          measurement.copyWith(
                              expanderOption: measurement.expanderOption
                                  .copyWith(bottomAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
