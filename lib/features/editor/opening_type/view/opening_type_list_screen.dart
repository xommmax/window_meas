import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/view/opening_type_grid.dart';
import 'package:window_meas/l10n/localization.dart';

class OpeningTypeListScreen extends StatelessWidget {
  const OpeningTypeListScreen({
    required this.selectedOpeningType,
    super.key,
  });

  final OpeningType? selectedOpeningType;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.openingTypes),
        ),
        body: SafeArea(
          child: OpeningTypeGridView(
            onSelected: (openingType) => Navigator.pop(context, openingType),
            selectedOpeningType: selectedOpeningType,
          ),
        ),
      );
}
