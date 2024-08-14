import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/connector.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/l10n/localization.dart';

import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';

class ConnectorsItem extends StatelessWidget {
  const ConnectorsItem(
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
              '${context.l10n.connectors}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            Subcategory(
              children: [
                for (final connector in position.connectors) ...[
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextItem(
                        title:
                            '${context.l10n.connector} №${position.connectors.indexOf(connector) + 1}',
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.grey),
                        onPressed: () async {
                          final newConnectors = List.of(position.connectors)..remove(connector);
                          context
                              .read<MeasurementDetailsCubit>()
                              .updatePosition(position.copyWith(connectors: newConnectors));
                        },
                      ),
                    ],
                  ),
                  Subcategory(
                    key: ValueKey(connector.createdAt),
                    children: [
                      const Divider(),
                      DropdownItem(
                        title: context.l10n.angle,
                        values: ConnectorAngle.values,
                        initialValue: connector.angle,
                        onSelected: (value) =>
                            _updateConnector(context, connector.copyWith(angle: value)),
                      ),
                      const Divider(),
                      InputItem(
                        title: context.l10n.description,
                        value: connector.description,
                        onChanged: (value) =>
                            _updateConnector(context, connector.copyWith(description: value)),
                      ),
                      if (position.connectors.indexOf(connector) == position.connectors.length - 1)
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
                onTap: () => _addConnector(context),
              ),
            ),
          ],
        ),
      );

  Future<void> _addConnector(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());

    final connector = Connector.initial();

    final newConnectors = List.of(position.connectors)..add(connector);

    await context
        .read<MeasurementDetailsCubit>()
        .updatePosition(position.copyWith(connectors: newConnectors));
  }

  void _updateConnector(BuildContext context, Connector connector) {
    final newConnectors = List.of(position.connectors);
    final index = newConnectors.indexWhere((e) => e.createdAt == connector.createdAt);
    newConnectors[index] = connector;
    context
        .read<MeasurementDetailsCubit>()
        .updatePosition(position.copyWith(connectors: newConnectors));
  }
}
