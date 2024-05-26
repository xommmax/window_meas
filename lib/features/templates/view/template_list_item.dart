import 'package:flutter/material.dart';
import 'package:window_meas/features/templates/data/model/template.dart';
import 'package:window_meas/features/templates/view/template_painter.dart';

class TemplateItem extends StatelessWidget {
  const TemplateItem(
    this.template, {
    super.key,
  });

  final Template template;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(60),
      child: Column(
        children: [
          SizedBox(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: TemplatePainter(
                lines: template.lines,
                currentLine: (null, null),
                segments: template.segments,
              ),
            ),
          ),
          Text(
            'TEMPLATE ID: ${template.id}',
          ),
        ],
      ));
}
