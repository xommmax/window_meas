import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_grid.dart';
import 'package:window_meas/l10n/localization.dart';

class FillingTypeListScreen extends StatelessWidget {
  const FillingTypeListScreen({
    required this.selectedFillingType,
    super.key,
  });

  final FillingType? selectedFillingType;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.fillingTypes),
        ),
        body: SafeArea(
          child: FillingTypeGridView(
            onSelected: (fillingType) => Navigator.pop(context, fillingType),
            selectedFillingType: selectedFillingType,
          ),
        ),
      );
}
