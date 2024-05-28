import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';

class SchemePreviewPainter extends CustomPainter {
  static const lineWidth = 1.5;

  final Scheme scheme;

  SchemePreviewPainter(this.scheme);
  @override
  void paint(Canvas canvas, Size size) {
    _drawLines(canvas, size);
  }

  @override
  bool shouldRepaint(SchemePreviewPainter oldDelegate) =>
      !listEquals(scheme.lines, oldDelegate.scheme.lines);

  void _drawLines(Canvas canvas, Size size) {
    if (scheme.lines.isEmpty) return;

    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth;

    double minX = scheme.lines.first.p1.dx;
    double maxX = scheme.lines.first.p1.dx;
    double minY = scheme.lines.first.p1.dy;
    double maxY = scheme.lines.first.p1.dy;
    for (final line in scheme.lines) {
      if (line.p1.dx < minX) minX = line.p1.dx;
      if (line.p1.dx > maxX) maxX = line.p1.dx;
      if (line.p1.dy < minY) minY = line.p1.dy;
      if (line.p1.dy > maxY) maxY = line.p1.dy;
      if (line.p2.dx < minX) minX = line.p2.dx;
      if (line.p2.dx > maxX) maxX = line.p2.dx;
      if (line.p2.dy < minY) minY = line.p2.dy;
      if (line.p2.dy > maxY) maxY = line.p2.dy;
    }

    final maxRange = max(maxX - minX, maxY - minY).toInt();

    for (final line in scheme.lines) {
      canvas.drawLine(
        line.p1.toTemplateCoord(size, maxRange, minX.toInt(), minY.toInt()),
        line.p2.toTemplateCoord(size, maxRange, minX.toInt(), minY.toInt()),
        linePaint,
      );
    }
  }
}
