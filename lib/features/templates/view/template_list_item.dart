import 'package:flutter/material.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_painter.dart';

class TemplateItem extends StatelessWidget {
  const TemplateItem(
    this.template, {
    super.key,
  });

  final Template template;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primary.withOpacity(0.5),
            width: 0.5,
          ),
          color: AppColors.primary.withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomPaint(
            painter: TemplatePainter(lines: template.scheme.lines),
          ),
        ),
      );
}
