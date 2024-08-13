import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/windowsill_extension_enum.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:window_meas/features/measurement/view/details/widgets/subcategory.dart';
import 'package:window_meas/l10n/localization.dart';

class OtherWorkSection extends StatelessWidget {
  const OtherWorkSection(
    this.measurement, {
    super.key,
  });

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(height: 8),
            SwitchItem(
              title: context.l10n.disassembly,
              value: measurement.disassembly,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(disassembly: b)),
            ),
            const Divider(),
            if (measurement.disassembly)
              Subcategory(
                children: [
                  SwitchItem(
                    title: context.l10n.screedDisassembly,
                    value: measurement.screedDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(screedDisassembly: b)),
                  ),
                  const Divider(),
                  if (measurement.screedDisassembly)
                    Subcategory(children: [
                      InputItem(
                        title: context.l10n.price,
                        value: measurement.screedDisassemblyPrice,
                        onChanged: (s) => context
                            .read<MeasurementDetailsCubit>()
                            .updateMeasurement(measurement.copyWith(screedDisassemblyPrice: s)),
                        keyboardType: TextInputType.number,
                      ),
                      const Divider(),
                    ]),
                  SwitchItem(
                    title: context.l10n.gridDisassembly,
                    value: measurement.gridDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(gridDisassembly: b)),
                  ),
                  const Divider(),
                  if (measurement.gridDisassembly)
                    Subcategory(children: [
                      InputItem(
                        title: context.l10n.price,
                        value: measurement.gridDisassemblyPrice,
                        onChanged: (s) => context
                            .read<MeasurementDetailsCubit>()
                            .updateMeasurement(measurement.copyWith(gridDisassemblyPrice: s)),
                        keyboardType: TextInputType.number,
                      ),
                      const Divider(),
                    ]),
                  SwitchItem(
                    title: context.l10n.roofDisassembly,
                    value: measurement.roofDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(roofDisassembly: b)),
                  ),
                  const Divider(),
                  if (measurement.roofDisassembly)
                    Subcategory(children: [
                      InputItem(
                        title: context.l10n.price,
                        value: measurement.roofDisassemblyPrice,
                        onChanged: (s) => context
                            .read<MeasurementDetailsCubit>()
                            .updateMeasurement(measurement.copyWith(roofDisassemblyPrice: s)),
                        keyboardType: TextInputType.number,
                      ),
                      const Divider(),
                    ]),
                  SwitchItem(
                    title: context.l10n.railingDisassembly,
                    value: measurement.railingDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(railingDisassembly: b)),
                  ),
                  const Divider(),
                  if (measurement.railingDisassembly)
                    Subcategory(children: [
                      InputItem(
                        title: context.l10n.price,
                        value: measurement.railingDisassemblyPrice,
                        onChanged: (s) => context
                            .read<MeasurementDetailsCubit>()
                            .updateMeasurement(measurement.copyWith(railingDisassemblyPrice: s)),
                        keyboardType: TextInputType.number,
                      ),
                      const Divider(),
                    ]),
                  SwitchItem(
                    title: context.l10n.balconyDisassembly,
                    value: measurement.balconyDisassembly,
                    onChanged: (b) => context
                        .read<MeasurementDetailsCubit>()
                        .updateMeasurement(measurement.copyWith(balconyDisassembly: b)),
                  ),
                  const Divider(),
                  if (measurement.balconyDisassembly)
                    Subcategory(children: [
                      InputItem(
                        title: context.l10n.price,
                        value: measurement.balconyDisassemblyPrice,
                        onChanged: (s) => context
                            .read<MeasurementDetailsCubit>()
                            .updateMeasurement(measurement.copyWith(balconyDisassemblyPrice: s)),
                        keyboardType: TextInputType.number,
                      ),
                      const Divider(),
                    ]),
                ],
              ),
            SwitchItem(
              title: context.l10n.parapetReinforcement,
              value: measurement.parapetReinforcement,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(parapetReinforcement: b)),
            ),
            const Divider(),
            if (measurement.parapetReinforcement)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.parapetReinforcementPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(parapetReinforcementPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.slabExtension,
              value: measurement.slabExtension,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(slabExtension: b)),
            ),
            const Divider(),
            if (measurement.slabExtension)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.slabExtensionPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionPrice: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.installation,
                  value: measurement.slabExtensionInstallation,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionInstallation: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.insulation,
                  value: measurement.slabExtensionInsulation,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionInsulation: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.flooring,
                  value: measurement.slabExtensionFlooring,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionFlooring: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.lift,
                  value: measurement.slabExtensionLift,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionLift: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.sheathing,
                  value: measurement.slabExtensionSheathing,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionSheathing: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.delivery,
                  value: measurement.slabExtensionDelivery,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(slabExtensionDelivery: s)),
                ),
                const Divider(),
              ]),
            DropdownItem<WindowsillExtension>(
              title: context.l10n.windowsillExtension,
              values: WindowsillExtension.values,
              initialValue: measurement.windowsillExtension,
              onSelected: (e) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(windowsillExtension: e)),
            ),
            const Divider(),
            if (measurement.windowsillExtension != WindowsillExtension.none)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.windowsillExtensionPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(windowsillExtensionPrice: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.welding,
                  value: measurement.windowsillExtensionWelding,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(windowsillExtensionWelding: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.sheathing,
                  value: measurement.windowsillExtensionSheathing,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(windowsillExtensionSheathing: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.insulation,
                  value: measurement.windowsillExtensionInsulation,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(windowsillExtensionInsulation: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.railingSheathing,
              value: measurement.railingSheathing,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(railingSheathing: b)),
            ),
            const Divider(),
            if (measurement.railingSheathing)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.inside,
                  value: measurement.railingSheathingInside,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(railingSheathingInside: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.outside,
                  value: measurement.railingSheathingOutside,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(railingSheathingOutside: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.insulation,
                  value: measurement.railingSheathingInsulation,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(railingSheathingInsulation: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.ceiling,
              value: measurement.ceiling,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(ceiling: b)),
            ),
            const Divider(),
            if (measurement.ceiling)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.ceilingPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(ceilingPrice: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.insulation,
                  value: measurement.ceilingInsulation,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(ceilingInsulation: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.loadBearingWall,
              value: measurement.loadBearingWall,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(loadBearingWall: b)),
            ),
            const Divider(),
            if (measurement.loadBearingWall)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.sheathing,
                  value: measurement.loadBearingWallSheathing,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(loadBearingWallSheathing: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.insulation,
              value: measurement.insulation,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(insulation: b)),
            ),
            const Divider(),
            if (measurement.insulation)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.price,
                  value: measurement.insulationPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(insulationPrice: s)),
                ),
                const Divider(),
              ]),
            SwitchItem(
              title: context.l10n.flooring,
              value: measurement.flooring,
              onChanged: (b) => context
                  .read<MeasurementDetailsCubit>()
                  .updateMeasurement(measurement.copyWith(flooring: b)),
            ),
            const Divider(),
            if (measurement.flooring)
              Subcategory(children: [
                InputItem(
                  title: context.l10n.flooringCovering,
                  value: measurement.flooringCovering,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(flooringCovering: s)),
                ),
                const Divider(),
                InputItem(
                  title: context.l10n.price,
                  value: measurement.flooringPrice,
                  onChanged: (s) => context
                      .read<MeasurementDetailsCubit>()
                      .updateMeasurement(measurement.copyWith(flooringPrice: s)),
                ),
                const Divider(),
              ]),
            const SizedBox(height: 8),
          ],
        ),
      );
}
