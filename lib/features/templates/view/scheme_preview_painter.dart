import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_meas/common/ext/offset_ext.dart';
import 'package:window_meas/features/meas/data/model/scheme.dart';

class SchemePreviewPainter extends CustomPainter {
  static const lineWidth = 1.5;

  final Scheme scheme;

  SchemePreviewPainter(this.scheme);
  @override
  void paint(Canvas canvas, Size size) {
    _drawLines(canvas, size);
  }

  @override
  bool shouldRepaint(SchemePreviewPainter oldDelegate) => !listEquals(scheme.lines, oldDelegate.scheme.lines);

  void _drawLines(Canvas canvas, Size size) {
    if (scheme.lines.isEmpty) return;

    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth;

    double minX = scheme.lines.first.$1!.dx;
    double maxX = scheme.lines.first.$1!.dx;
    double minY = scheme.lines.first.$1!.dy;
    double maxY = scheme.lines.first.$1!.dy;
    for (final line in scheme.lines) {
      if (line.$1 != null && line.$2 != null) {
        if (line.$1!.dx < minX) minX = line.$1!.dx;
        if (line.$1!.dx > maxX) maxX = line.$1!.dx;
        if (line.$1!.dy < minY) minY = line.$1!.dy;
        if (line.$1!.dy > maxY) maxY = line.$1!.dy;
        if (line.$2!.dx < minX) minX = line.$2!.dx;
        if (line.$2!.dx > maxX) maxX = line.$2!.dx;
        if (line.$2!.dy < minY) minY = line.$2!.dy;
        if (line.$2!.dy > maxY) maxY = line.$2!.dy;
      }
    }

    final maxRange = max(maxX - minX, maxY - minY).toInt();

    for (final line in scheme.lines) {
      if (line.$1 != null && line.$2 != null) {
        canvas.drawLine(
          line.$1!.toTemplateCoord(size, maxRange, minX.toInt(), minY.toInt()),
          line.$2!.toTemplateCoord(size, maxRange, minX.toInt(), minY.toInt()),
          linePaint,
        );
      }
    }
  }
}
