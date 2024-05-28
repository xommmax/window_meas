import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/meas/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/scheme_preview_painter.dart';
import 'package:window_meas/features/templates/view/template_list_screen.dart';
import 'package:window_meas/l10n/localization.dart';

class SchemeItem extends StatelessWidget {
  const SchemeItem(this.measurement, {super.key});

  final Measurement measurement;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${context.l10n.scheme}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Center(
              child: InkWell(
                child: measurement.scheme == null
                    ? const Padding(
                        padding: EdgeInsets.all(16),
                        child: FaIcon(FontAwesomeIcons.squarePlus),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primary.withOpacity(0.5), width: 0.5),
                          color: AppColors.primary.withOpacity(0.1),
                        ),
                        padding: const EdgeInsets.all(16.0),
                        height: 200,
                        width: 200,
                        child: CustomPaint(painter: SchemePreviewPainter(measurement.scheme!)),
                      ),
                onTap: () => _onSchemeClick(context),
              ),
            ),
          ],
        ),
      );

  Future<void> _onSchemeClick(BuildContext context) async {
    final option = await showDialog<SchemeItemOption>(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text(context.l10n.chooseOption),
              children: (measurement.scheme != null)
                  ? [
                      ListTile(
                        title: Text(context.l10n.edit),
                        onTap: () => Navigator.pop(context, SchemeItemOption.edit),
                      ),
                      ListTile(
                        title: Text(context.l10n.delete),
                        onTap: () => Navigator.pop(context, SchemeItemOption.delete),
                      ),
                    ]
                  : [
                      ListTile(
                        title: Text(
                          context.l10n.templates,
                        ),
                        onTap: () => Navigator.pop(context, SchemeItemOption.template),
                      ),
                      ListTile(
                        title: Text(context.l10n.manualScheme),
                        onTap: () => Navigator.pop(context, SchemeItemOption.manual),
                      ),
                    ],
            ));

    if (context.mounted) {
      _onSchemeOptionSelected(option, context);
    }
  }

  Future<void> _onSchemeOptionSelected(SchemeItemOption? option, BuildContext context) async {
    if (option == null || !context.mounted) return;

    switch (option) {
      case SchemeItemOption.template:
        {
          final Template? template = await context.push(
            '/template_list',
            extra: {'mode': TemplateListScreenMode.select},
          );
          if (template != null && context.mounted) {
            _openEditor(context, template: template);
          }
        }
      case SchemeItemOption.manual:
        _openEditor(context);
      case SchemeItemOption.edit:
        _openEditor(context);
      case SchemeItemOption.delete:
        context.read<MeasurementDetailsCubit>().updateMeasurement(
              measurement.copyWith(scheme: null),
            );
    }
  }

  Future<void> _openEditor(BuildContext context, {Template? template}) async {
    final Scheme? scheme = await context.push(
      '/editor',
      extra: {'scheme': template?.scheme ?? measurement.scheme},
    );
    if (scheme != null && context.mounted) {
      context.read<MeasurementDetailsCubit>().updateMeasurement(
            measurement.copyWith(scheme: scheme),
          );
    }
  }
}

enum SchemeItemOption {
  manual,
  template,
  edit,
  delete,
}
