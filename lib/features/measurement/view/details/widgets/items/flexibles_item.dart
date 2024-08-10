import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/position.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/scheme_preview_painter.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';
import 'package:window_meas/l10n/localization.dart';

class FlexiblesItem extends StatelessWidget {
  const FlexiblesItem(
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
            Text(
              '${context.l10n.flexibles}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Center(
              child: Column(
                children: [
                  for (final flexible in position.flexibles)
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 24),
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.primary.withOpacity(0.5), width: 0.5),
                            color: AppColors.primary.withOpacity(0.1),
                          ),
                          padding: const EdgeInsets.all(16.0),
                          height: 200,
                          width: 200,
                          child: CustomPaint(painter: SchemePreviewPainter(flexible)),
                        ),
                      ),
                      onTap: () => flexibleClick(context, flexible),
                    ),
                  InkWell(
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: FaIcon(FontAwesomeIcons.squarePlus),
                    ),
                    onTap: () => flexibleClick(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Future<void> flexibleClick(BuildContext context, [Scheme? flexible]) async {
    FocusScope.of(context).requestFocus(FocusNode());
    final option = await showDialog<FlexiblesItemOption>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(context.l10n.chooseOption),
        children: (flexible != null)
            ? [
                ListTile(
                  title: Text(context.l10n.edit),
                  onTap: () => Navigator.pop(context, FlexiblesItemOption.edit),
                ),
                ListTile(
                  title: Text(context.l10n.delete),
                  onTap: () => Navigator.pop(context, FlexiblesItemOption.delete),
                ),
              ]
            : [
                ListTile(
                  title: Text(
                    context.l10n.templates,
                  ),
                  onTap: () => Navigator.pop(context, FlexiblesItemOption.template),
                ),
                ListTile(
                  title: Text(context.l10n.manualScheme),
                  onTap: () => Navigator.pop(context, FlexiblesItemOption.manual),
                ),
              ],
      ),
    );

    if (context.mounted) {
      flexibleOptionSelected(context, option, flexible);
    }
  }

  Future<void> flexibleOptionSelected(
    BuildContext context,
    FlexiblesItemOption? option,
    Scheme? flexible,
  ) async {
    if (option == null || !context.mounted) return;

    switch (option) {
      case FlexiblesItemOption.template:
        {
          final Template? template = await context.push(
            // TODO:
            '/flexibles_template_list',
            extra: {'mode': TemplateListScreenMode.select},
          );
          if (template != null && context.mounted) {
            _openEditor(context, template: template);
          }
        }
      case FlexiblesItemOption.manual:
        _openEditor(context);
      case FlexiblesItemOption.edit:
        _openEditor(context, flexible: flexible);
      case FlexiblesItemOption.delete:
        context.read<MeasurementDetailsCubit>().deleteFlexible(position, flexible);
    }
  }

  Future<void> _openEditor(BuildContext context, {Template? template, Scheme? flexible}) async {
    final Scheme? flexiblesScheme = await context.push(
      '/editor',
      extra: {'scheme': template?.scheme ?? flexible},
    );
    if (flexiblesScheme != null && context.mounted) {
      context.read<MeasurementDetailsCubit>().insertFlexible(position, flexiblesScheme);
    }
  }
}

enum FlexiblesItemOption {
  manual,
  template,
  edit,
  delete,
}
