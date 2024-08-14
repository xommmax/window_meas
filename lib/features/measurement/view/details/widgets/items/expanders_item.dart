import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/expander.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/features/measurement/view/details/confirmation_dialog.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';

class ExpandersItem extends StatelessWidget {
  const ExpandersItem(
    this.position, {
    super.key,
  });

  final Position position;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              '${context.l10n.expanders}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Subcategory(
              children: [
                for (final expander in position.expanders) ...[
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextItem(
                        title:
                            '${context.l10n.expander} №${position.expanders.indexOf(expander) + 1}',
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.grey),
                        onPressed: () async {
                          final newExpanders = List.of(position.expanders)..remove(expander);
                          context
                              .read<MeasurementDetailsCubit>()
                              .updatePosition(position.copyWith(expanders: newExpanders));
                        },
                      ),
                    ],
                  ),
                  Subcategory(
                    key: ValueKey(expander.createdAt),
                    children: [
                      const Divider(),
                      DropdownItem(
                        title: context.l10n.side,
                        values: ExpanderSide.values,
                        initialValue: expander.side,
                        onSelected: (value) =>
                            _updateExpander(context, expander.copyWith(side: value)),
                      ),
                      const Divider(),
                      DropdownItem(
                        title: context.l10n.width,
                        values: ExpanderWidth.values,
                        initialValue: expander.width,
                        onSelected: (value) =>
                            _updateExpander(context, expander.copyWith(width: value)),
                      ),
                      const Divider(),
                      InputItem(
                        title: context.l10n.length,
                        value: expander.length,
                        onChanged: (value) =>
                            _updateExpander(context, expander.copyWith(length: value)),
                      ),
                      if (position.expanders.indexOf(expander) == position.expanders.length - 1)
                        const Divider(),
                    ],
                  ),
                ]
              ],
            ),
            Center(
              child: InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: FaIcon(FontAwesomeIcons.squarePlus),
                ),
                onTap: () => _addExpander(context),
              ),
            ),
          ],
        ),
      );

  Future<void> _addExpander(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    final expander = Expander.initial();

    final newExpanders = List.of(position.expanders)..add(expander);

    await context
        .read<MeasurementDetailsCubit>()
        .updatePosition(position.copyWith(expanders: newExpanders));
  }

  void _updateExpander(BuildContext context, Expander expander) {
    final newExpanders = List.of(position.expanders);
    final index = newExpanders.indexWhere((e) => e.createdAt == expander.createdAt);
    newExpanders[index] = expander;
    context
        .read<MeasurementDetailsCubit>()
        .updatePosition(position.copyWith(expanders: newExpanders));
  }
}
