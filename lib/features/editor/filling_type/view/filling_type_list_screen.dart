import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/view/input_dialog.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_grid.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_sateen.dart';
import 'package:window_meas/l10n/localization.dart';

class FillingTypeListScreen extends StatefulWidget {
  const FillingTypeListScreen({
    required this.selectedFillingType,
    required this.sateen,
    required this.mosquito,
    super.key,
  });

  final FillingType? selectedFillingType;
  final bool? sateen;
  final bool? mosquito;

  @override
  State<FillingTypeListScreen> createState() => _FillingTypeListScreenState();
}

class _FillingTypeListScreenState extends State<FillingTypeListScreen> {
  late bool sateen;
  late bool mosquito;

  @override
  void initState() {
    super.initState();
    sateen = widget.sateen ?? false;
    mosquito = widget.mosquito ?? false;
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (!didPop) {
            Navigator.pop(context, (
              widget.selectedFillingType ?? FillingType.glass,
              sateen,
              mosquito,
              null,
            ));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(context.l10n.fillingTypes),
          ),
          body: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                FillingTypeGridView(
                  onSelected: (fillingType) async {
                    String? text;
                    if (fillingType == FillingType.connector) {
                      text = await InputDialog.show(context);
                    }
                    if (!context.mounted) return;

                    Navigator.pop(context, (
                      fillingType,
                      sateen,
                      mosquito,
                      text,
                    ));
                  },
                  selectedFillingType: widget.selectedFillingType,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FillingTypeCheckboxOption(
                        text: context.l10n.sateen,
                        value: sateen,
                        onChanged: (value) => setState(() => sateen = value),
                      ),
                      FillingTypeCheckboxOption(
                        text: context.l10n.mosquito,
                        value: mosquito,
                        onChanged: (value) => setState(() => mosquito = value),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
