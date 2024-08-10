import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:window_meas/features/calc/polygon_ext.dart';
import 'package:window_meas/features/editor/data/model/direction.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:window_meas/features/measurement/pdf/pdf_filling_type_painter.dart';
import 'package:window_meas/features/measurement/pdf/pdf_opening_type_painter.dart';

class PdfCustomPainter {
  static const lineWidth = 1.0;
  final Scheme scheme;
  final pw.Context context;
  final PdfOpeningTypeDrawer openingTypeDrawer;
  final PdfFillingTypeDrawer fillingTypeDrawer;

  int _gridAmount = 1;
  int _minX = 0;
  int _minY = 0;
  Size size = const Size(0, 0);
  double gridSize = 0;

  PdfCustomPainter(this.scheme, this.context)
      : openingTypeDrawer = PdfOpeningTypeDrawer(strokeWidth: lineWidth),
        fillingTypeDrawer = PdfFillingTypeDrawer(strokeWidth: lineWidth);

  void paint(PdfGraphics canvas, PdfPoint pdfSize) {
    _calculate(pdfSize);
    _drawFillingTypes(canvas);
    _drawOpeningTypes(canvas);
    _drawArches(canvas);
    _drawLines(canvas);
    _drawMeasurements(canvas);
  }

  void _calculate(PdfPoint pdfSize) {
    size = Size(pdfSize.x, pdfSize.y);

    if (scheme.lines.isEmpty) return;

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

    _gridAmount = max(maxX - minX, maxY - minY).toInt();
    gridSize = size.width / _gridAmount;

    _minX = minX.toInt();
    _minY = minY.toInt();
  }

  void _drawLines(PdfGraphics canvas) {
    canvas
      ..setColor(PdfColors.black)
      ..setLineWidth(lineWidth);

    for (final line in scheme.lines) {
      final p1 = line.p1.toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = line.p2.toTemplateCoord(size, _gridAmount, _minX, _minY);
      canvas.drawLine(p1.dx, size.height - p1.dy, p2.dx, size.height - p2.dy);
      canvas.strokePath();
    }
  }

  void _drawArches(PdfGraphics canvas) {
    canvas
      ..setColor(PdfColors.black)
      ..setLineWidth(lineWidth);

    for (final arch in scheme.arches) {
      final p1 = Offset(arch.p1.dx, arch.p1.dy).toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = Offset(arch.p2.dx, arch.p2.dy).toTemplateCoord(size, _gridAmount, _minX, _minY);
      final top = Offset((arch.p1.dx + arch.p2.dx) / 2, arch.top!.dy)
          .toTemplateCoord(size, _gridAmount, _minX, _minY);

      final controlPoint = Offset(
        (top.dx - 0.125 * p1.dx - 0.125 * p2.dx) / 0.75,
        (size.height - top.dy - 0.125 * (size.height - p1.dy) - 0.125 * (size.height - p2.dy)) /
            0.75,
      );
      canvas
        ..moveTo((p1.dx + p2.dx) / 2, size.height - (p1.dy + p2.dy) / 2)
        ..lineTo(p1.dx, size.height - p1.dy)
        ..curveTo(
          controlPoint.dx - gridSize * 2,
          controlPoint.dy,
          controlPoint.dx + gridSize * 2,
          controlPoint.dy,
          p2.dx,
          size.height - p2.dy,
        )
        ..closePath()
        ..strokePath();
    }
  }

  void _drawOpeningTypes(PdfGraphics canvas) {
    for (final openingType in scheme.openingTypes) {
      final combinedPolygon = openingType.polygons.reduce((p1, p2) => p1.combine(p2));

      canvas.saveContext();
      canvas.setTransform(Matrix4.identity()
        ..translate(
          combinedPolygon.templateLeft(size, _gridAmount, _minX, _minY),
          combinedPolygon.pdfTemplateTop(size, _gridAmount, _minX, _minY),
        ));

      openingTypeDrawer.drawOpeningType(
        canvas,
        Size(
          combinedPolygon.templateWidth(size, _gridAmount, _minX, _minY),
          combinedPolygon.templateHeight(size, _gridAmount, _minX, _minY),
        ),
        openingType.openingType,
      );
      canvas.strokePath();
      canvas.restoreContext();
      canvas.setTransform(Matrix4.identity());
    }
  }

  void _drawFillingTypes(PdfGraphics canvas) {
    for (final fillingType in scheme.fillingTypes) {
      canvas.saveContext();
      canvas.setTransform(Matrix4.identity()
        ..translate(
          fillingType.polygon.templateLeft(size, _gridAmount, _minX, _minY),
          fillingType.polygon.pdfTemplateTop(size, _gridAmount, _minX, _minY),
        ));

      final width = fillingType.polygon.templateWidth(size, _gridAmount, _minX, _minY);
      final height = fillingType.polygon.templateHeight(size, _gridAmount, _minX, _minY);
      fillingTypeDrawer.drawFillingType(
        canvas,
        Size(width, height),
        fillingType.fillingType,
      );

      canvas.strokePath();

      String text = '';
      if (fillingType.sateen) text += 'C';
      if (fillingType.mosquito) text += ' M';

      final center = Offset(width / 2, height / 2);

      final textOffset = Offset(center.dx - gridSize / 2, center.dy - gridSize / 2);

      canvas.setColor(PdfColors.red);
      canvas.drawString(
        PdfFont.helveticaBold(context.document),
        gridSize,
        text,
        textOffset.dx,
        textOffset.dy,
      );

      canvas.restoreContext();
      canvas.setTransform(Matrix4.identity());
    }
  }

  void _drawMeasurements(PdfGraphics canvas) {
    canvas
      ..setColor(PdfColors.red)
      ..setLineWidth(lineWidth / 2);

    _drawHorizontalMeasLines(canvas);

    _drawVerticalMeasLines(canvas);
  }

  void _drawHorizontalMeasLines(PdfGraphics canvas) {
    final horSegments =
        scheme.sizeSegments.where((e) => e.direction == SegmentDirection.horizontal).toList();
    if (horSegments.isEmpty) return;

    final mainHorSegment = horSegments.firstWhereOrNull((s) => s.isMain);

    if (mainHorSegment != null) {
      final p1 = mainHorSegment.p1.toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = mainHorSegment.p2.toTemplateCoord(size, _gridAmount, _minX, _minY);

      canvas.drawLine(p1.dx, size.height - (p1.dy - 2.25 * gridSize), p1.dx, size.height - p1.dy);
      canvas.drawLine(p2.dx, size.height - (p1.dy - 2.25 * gridSize), p2.dx, size.height - p1.dy);
      canvas.drawLine(
          p1.dx, size.height - (p1.dy - 2 * gridSize), p2.dx, size.height - (p1.dy - 2 * gridSize));

      canvas.strokePath();

      _drawTrianglePath(canvas, Offset(p1.dx, p1.dy - 2 * gridSize), Direction.left);
      _drawTrianglePath(canvas, Offset(p2.dx, p1.dy - 2 * gridSize), Direction.right);

      _drawHorizontalSegmentSizeText(
        canvas,
        mainHorSegment,
        p1.dx,
        p2.dx,
        p1.dy - 2 * gridSize,
      );
    }
    horSegments.removeWhere((e) => e.isMain);
    if (horSegments.isEmpty) return;

    for (final segment in horSegments) {
      final p1 = segment.p1.toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = segment.p2.toTemplateCoord(size, _gridAmount, _minX, _minY);
      canvas.drawLine(p2.dx, size.height - (p1.dy - 1.25 * gridSize), p2.dx, size.height - p1.dy);
      canvas.drawLine(
          p1.dx, size.height - (p1.dy - 1 * gridSize), p2.dx, size.height - (p1.dy - 1 * gridSize));

      canvas.strokePath();

      _drawTrianglePath(canvas, Offset(p1.dx, p1.dy - 1 * gridSize), Direction.left);
      _drawTrianglePath(canvas, Offset(p2.dx, p1.dy - 1 * gridSize), Direction.right);

      _drawHorizontalSegmentSizeText(canvas, segment, p1.dx, p2.dx, p1.dy - 1 * gridSize);
    }
  }

  void _drawVerticalMeasLines(PdfGraphics canvas) {
    final verSegments = scheme.sizeSegments
        .where(
          (e) => e.direction == SegmentDirection.vertical,
        )
        .toList();
    if (verSegments.isEmpty) return;

    final mainVerSegment = verSegments.firstWhereOrNull((s) => s.isMain);

    if (mainVerSegment != null) {
      final p1 = mainVerSegment.p1.toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = mainVerSegment.p2.toTemplateCoord(size, _gridAmount, _minX, _minY);
      canvas.drawLine(p1.dx - 2.25 * gridSize, size.height - p1.dy, p1.dx, size.height - p1.dy);
      canvas.drawLine(p1.dx - 2.25 * gridSize, size.height - p2.dy, p1.dx, size.height - p2.dy);
      canvas.drawLine(
          p1.dx - 2 * gridSize, size.height - p1.dy, p1.dx - 2 * gridSize, size.height - p2.dy);

      canvas.strokePath();

      _drawTrianglePath(canvas, Offset(p1.dx - 2 * gridSize, p1.dy), Direction.up);
      _drawTrianglePath(canvas, Offset(p1.dx - 2 * gridSize, p2.dy), Direction.down);

      _drawVerticalSegmentSizeText(
        canvas,
        mainVerSegment,
        p1.dy,
        p2.dy,
        p1.dx - 2 * gridSize,
      );
    }

    verSegments.removeWhere((e) => e.isMain);
    if (verSegments.isEmpty) return;

    for (final segment in verSegments) {
      final p1 = segment.p1.toTemplateCoord(size, _gridAmount, _minX, _minY);
      final p2 = segment.p2.toTemplateCoord(size, _gridAmount, _minX, _minY);

      canvas.drawLine(p1.dx - 1.25 * gridSize, size.height - p2.dy, p1.dx, size.height - p2.dy);
      canvas.drawLine(
          p1.dx - 1 * gridSize, size.height - p1.dy, p1.dx - 1 * gridSize, size.height - p2.dy);

      canvas.strokePath();

      _drawTrianglePath(canvas, Offset(p1.dx - 1 * gridSize, p1.dy), Direction.up);
      _drawTrianglePath(canvas, Offset(p1.dx - 1 * gridSize, p2.dy), Direction.down);

      _drawVerticalSegmentSizeText(canvas, segment, p1.dy, p2.dy, p1.dx - 1 * gridSize);
    }
  }

  void _drawHorizontalSegmentSizeText(
    PdfGraphics canvas,
    SizeSegment segment,
    double x1,
    double x2,
    double y,
  ) {
    final center = Offset(x1 + (x2 - x1) / 2, size.height - y);

    final sizeText = (segment.size == null || segment.size!.isEmpty) ? '?' : segment.size!;
    final sizeTextWidget = pw.Text(
      sizeText,
      style: const pw.TextStyle(fontSize: 10, color: PdfColors.red),
    );
    sizeTextWidget.layout(context, const pw.BoxConstraints.tightForFinite());
    final sizeTextLayoutSize = sizeTextWidget.box?.size ?? const PdfPoint(0, 0);
    final sizeTextOffset = PdfPoint(
      center.dx - sizeTextLayoutSize.x / 2,
      center.dy + sizeTextLayoutSize.y / 4,
    );

    final commentText = segment.comment ?? '';
    final commentTextWidget = pw.Text(
      commentText,
      style: const pw.TextStyle(fontSize: 8, color: PdfColors.red),
    );
    commentTextWidget.layout(context, const pw.BoxConstraints.tightForFinite());
    final commentTextLayoutSize = commentTextWidget.box?.size ?? const PdfPoint(0, 0);
    final commentTextOffset = PdfPoint(
      center.dx - commentTextLayoutSize.x / 2,
      center.dy - commentTextLayoutSize.y,
    );

    pw.Widget.draw(
      sizeTextWidget,
      page: context.page,
      canvas: canvas,
      offset: sizeTextOffset,
      context: context,
    );

    pw.Widget.draw(
      commentTextWidget,
      page: context.page,
      canvas: canvas,
      offset: commentTextOffset,
      context: context,
    );
  }

  void _drawVerticalSegmentSizeText(
    PdfGraphics canvas,
    SizeSegment segment,
    double y1,
    double y2,
    double x,
  ) {
    final center = Offset(x, size.height - (y1 + (y2 - y1) / 2));

    final sizeText = (segment.size == null || segment.size!.isEmpty) ? '?' : segment.size!;
    final sizeTextWidget = pw.Text(
      sizeText,
      style: const pw.TextStyle(fontSize: 10, color: PdfColors.red),
    );
    sizeTextWidget.layout(context, const pw.BoxConstraints.tightForFinite());
    final sizeTextLayoutSize = sizeTextWidget.box?.size ?? const PdfPoint(0, 0);
    final sizeTextOffset = PdfPoint(
      center.dx - sizeTextLayoutSize.y / 4,
      center.dy - sizeTextLayoutSize.x / 2,
    );

    final commentText = segment.comment ?? '';
    final commentTextWidget = pw.Text(
      commentText,
      style: const pw.TextStyle(fontSize: 8, color: PdfColors.red),
    );
    commentTextWidget.layout(context, const pw.BoxConstraints.tightForFinite());
    final commentTextLayoutSize = commentTextWidget.box?.size ?? const PdfPoint(0, 0);
    final commentTextOffset = PdfPoint(
      center.dx + commentTextLayoutSize.y,
      center.dy - commentTextLayoutSize.x / 2,
    );

    canvas.saveContext();
    canvas.setTransform(Matrix4.identity()
      ..translate(sizeTextOffset.x, sizeTextOffset.y)
      ..rotateZ(pi / 2));

    pw.Widget.draw(
      sizeTextWidget,
      page: context.page,
      canvas: canvas,
      offset: PdfPoint.zero,
      context: context,
    );

    canvas.restoreContext();
    canvas.setTransform(Matrix4.identity());

    canvas.saveContext();
    canvas.setTransform(Matrix4.identity()
      ..translate(commentTextOffset.x, commentTextOffset.y)
      ..rotateZ(pi / 2));

    pw.Widget.draw(
      commentTextWidget,
      page: context.page,
      canvas: canvas,
      offset: PdfPoint.zero,
      context: context,
    );

    canvas.restoreContext();
    canvas.setTransform(Matrix4.identity());
  }

  void _drawTrianglePath(PdfGraphics canvas, Offset p, Direction direction) {
    canvas.moveTo(p.dx, size.height - p.dy);

    switch (direction) {
      case Direction.left:
        canvas.lineTo(p.dx + gridSize / 3, size.height - (p.dy - gridSize / 8));
      case Direction.right:
        canvas.lineTo(p.dx - gridSize / 3, size.height - (p.dy - gridSize / 8));
      case Direction.up:
        canvas.lineTo(p.dx - gridSize / 8, size.height - (p.dy + gridSize / 3));
      case Direction.down:
        canvas.lineTo(p.dx - gridSize / 8, size.height - (p.dy - gridSize / 3));
    }

    switch (direction) {
      case Direction.left:
        canvas.lineTo(p.dx + gridSize / 3, size.height - (p.dy + gridSize / 8));
      case Direction.right:
        canvas.lineTo(p.dx - gridSize / 3, size.height - (p.dy + gridSize / 8));
      case Direction.up:
        canvas.lineTo(p.dx + gridSize / 8, size.height - (p.dy + gridSize / 3));
      case Direction.down:
        canvas.lineTo(p.dx + gridSize / 8, size.height - (p.dy - gridSize / 3));
    }

    canvas.closePath();
    canvas.fillPath();
  }
}
