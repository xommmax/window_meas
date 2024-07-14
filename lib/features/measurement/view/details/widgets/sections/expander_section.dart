import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander_option.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';

class ExpanderSection extends StatelessWidget {
  const ExpanderSection(
    this.position, {
    super.key,
  });

  final Position position;

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
              value: position.expanderOption.rightEnabled,
              onChanged: (b) => context.read<MeasurementDetailsCubit>().updatePosition(
                    position.copyWith(
                        expanderOption: position.expanderOption.copyWith(rightEnabled: b)),
                  ),
            ),
            const Divider(),
            if (position.expanderOption.rightEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: position.expanderOption.rightWidth,
                    onSelected: (e) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(rightWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: position.expanderOption.rightLength,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(rightLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: position.expanderOption.rightAmount,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(rightAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderLeft,
              value: position.expanderOption.leftEnabled,
              onChanged: (b) => context.read<MeasurementDetailsCubit>().updatePosition(
                    position.copyWith(
                        expanderOption: position.expanderOption.copyWith(leftEnabled: b)),
                  ),
            ),
            const Divider(),
            if (position.expanderOption.leftEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: position.expanderOption.leftWidth,
                    onSelected: (e) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(leftWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: position.expanderOption.leftLength,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(leftLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: position.expanderOption.leftAmount,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(leftAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderTop,
              value: position.expanderOption.topEnabled,
              onChanged: (b) => context.read<MeasurementDetailsCubit>().updatePosition(
                    position.copyWith(
                        expanderOption: position.expanderOption.copyWith(topEnabled: b)),
                  ),
            ),
            const Divider(),
            if (position.expanderOption.topEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: position.expanderOption.topWidth,
                    onSelected: (e) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(topWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: position.expanderOption.topLength,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(topLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: position.expanderOption.topAmount,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(topAmount: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                ],
              ),
            SwitchItem(
              title: context.l10n.expanderBottom,
              value: position.expanderOption.bottomEnabled,
              onChanged: (b) => context.read<MeasurementDetailsCubit>().updatePosition(
                    position.copyWith(
                        expanderOption: position.expanderOption.copyWith(bottomEnabled: b)),
                  ),
            ),
            const Divider(),
            if (position.expanderOption.bottomEnabled)
              Subcategory(
                children: [
                  DropdownItem<ExpanderWidth>(
                    title: context.l10n.width,
                    values: ExpanderWidth.values,
                    initialValue: position.expanderOption.bottomWidth,
                    onSelected: (e) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(bottomWidth: e)),
                        ),
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.expanderLength,
                    value: position.expanderOption.bottomLength,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(bottomLength: s)),
                        ),
                    keyboardType: TextInputType.number,
                  ),
                  const Divider(),
                  InputItem(
                    title: context.l10n.quantity,
                    value: position.expanderOption.bottomAmount,
                    onChanged: (s) => context.read<MeasurementDetailsCubit>().updatePosition(
                          position.copyWith(
                              expanderOption: position.expanderOption.copyWith(bottomAmount: s)),
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
