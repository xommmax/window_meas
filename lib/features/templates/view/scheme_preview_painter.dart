import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_meas/features/calc/polygon_ext.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/filling_type/view/filling_type_painter.dart';
import 'package:window_meas/features/editor/opening_type/view/opening_type_painter.dart';

class SchemePreviewPainter extends CustomPainter {
  static const lineWidth = 1.5;
  final OpeningTypeDrawer openingTypeDrawer;
  final FillingTypeDrawer fillingTypeDrawer;
  final Scheme scheme;
  late final int maxGridAmount;
  late double minX, minY, maxX, maxY;

  SchemePreviewPainter(this.scheme)
      : openingTypeDrawer = OpeningTypeDrawer(strokeWidth: lineWidth),
        fillingTypeDrawer = FillingTypeDrawer(strokeWidth: lineWidth) {
    _calculate(scheme);
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawFillingTypes(canvas, size);
    _drawOpeningTypes(canvas, size);
    _drawArches(canvas, size);
    _drawLines(canvas, size);
  }

  @override
  bool shouldRepaint(SchemePreviewPainter oldDelegate) =>
      !listEquals(scheme.lines, oldDelegate.scheme.lines) ||
      !listEquals(scheme.openingTypes, oldDelegate.scheme.openingTypes) ||
      !listEquals(scheme.fillingTypes, oldDelegate.scheme.fillingTypes) ||
      !listEquals(scheme.arches, oldDelegate.scheme.arches);

  void _drawLines(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth;

    for (final line in scheme.lines) {
      canvas.drawLine(
        line.p1.toTemplateCoord(size, maxGridAmount, minX.toInt(), minY.toInt()),
        line.p2.toTemplateCoord(size, maxGridAmount, minX.toInt(), minY.toInt()),
        linePaint,
      );
    }
  }

  void _drawArches(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    for (final arch in scheme.arches) {
      canvas.drawArc(
        Rect.fromPoints(
          Offset(arch.p1.dx, arch.top!.dy)
              .toTemplateCoord(size, maxGridAmount, minX.toInt(), minY.toInt()),
          Offset(arch.p2.dx, 2 * arch.p2.dy - arch.top!.dy)
              .toTemplateCoord(size, maxGridAmount, minX.toInt(), minY.toInt()),
        ),
        arch.top!.dy <= arch.p1.dy ? pi : 0,
        pi,
        false,
        linePaint,
      );
    }
  }

  void _drawOpeningTypes(Canvas canvas, Size size) {
    for (final openingTypeRecord in scheme.openingTypes) {
      final combinedPolygon = openingTypeRecord.polygons.reduce((p1, p2) => p1.combine(p2));

      canvas.save();
      canvas.translate(
        combinedPolygon.templateLeft(size, maxGridAmount, minX.toInt(), minY.toInt()),
        combinedPolygon.templateTop(size, maxGridAmount, minX.toInt(), minY.toInt()),
      );

      openingTypeDrawer.drawOpeningType(
        canvas,
        Size(
          combinedPolygon.templateWidth(size, maxGridAmount, minX.toInt(), minY.toInt()),
          combinedPolygon.templateHeight(size, maxGridAmount, minX.toInt(), minY.toInt()),
        ),
        openingTypeRecord.openingType,
      );

      canvas.restore();
    }
  }

  void _drawFillingTypes(Canvas canvas, Size size) {
    for (final fillingType in scheme.fillingTypes) {
      canvas.save();
      canvas.translate(
        fillingType.polygon.templateLeft(size, maxGridAmount, minX.toInt(), minY.toInt()),
        fillingType.polygon.templateTop(size, maxGridAmount, minX.toInt(), minY.toInt()),
      );

      fillingTypeDrawer.drawFillingType(
        canvas,
        Size(
          fillingType.polygon.templateWidth(size, maxGridAmount, minX.toInt(), minY.toInt()),
          fillingType.polygon.templateHeight(size, maxGridAmount, minX.toInt(), minY.toInt()),
        ),
        fillingType.fillingType,
      );

      canvas.restore();
    }
  }

  void _calculate(Scheme scheme) {
    minX = scheme.lines.first.p1.dx;
    maxX = scheme.lines.first.p1.dx;
    minY = scheme.lines.first.p1.dy;
    maxY = scheme.lines.first.p1.dy;
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

    for (final arch in scheme.arches) {
      if (arch.p1.dx < minX) minX = arch.p1.dx;
      if (arch.p1.dx > maxX) maxX = arch.p1.dx;
      if (arch.p1.dy < minY) minY = arch.p1.dy;
      if (arch.p1.dy > maxY) maxY = arch.p1.dy;
      if (arch.p2.dx < minX) minX = arch.p2.dx;
      if (arch.p2.dx > maxX) maxX = arch.p2.dx;
      if (arch.p2.dy < minY) minY = arch.p2.dy;
      if (arch.p2.dy > maxY) maxY = arch.p2.dy;
      if (arch.top != null) {
        if (arch.top!.dx < minX) minX = arch.top!.dx;
        if (arch.top!.dx > maxX) maxX = arch.top!.dx;
        if (arch.top!.dy < minY) minY = arch.top!.dy;
        if (arch.top!.dy > maxY) maxY = arch.top!.dy;
      }
    }

    maxGridAmount = max(maxX - minX, maxY - minY).toInt();
  }
}
