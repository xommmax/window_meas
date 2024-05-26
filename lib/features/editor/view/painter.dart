import 'dart:math';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/common/ext/offset_ext.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/components.dart';

class MyCustomPainter extends CustomPainter {
  static const lineWidth = 0.5;

  final List<Line> lines;
  final Line currentLine;
  final List<Segment> segments;

  MyCustomPainter({
    required this.lines,
    required this.currentLine,
    required this.segments,
  });
  @override
  void paint(Canvas canvas, Size size) {
    _drawBg(canvas, size);
    _drawLines(canvas, size);
    _drawCurrentLine(canvas, size);
    _drawMeasurements(canvas, size);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) =>
      !listEquals(lines, oldDelegate.lines) ||
      currentLine != oldDelegate.currentLine ||
      !listEquals(segments, oldDelegate.segments);

  void _drawBg(Canvas canvas, Size size) {
    final pointsPaint = Paint()
      ..color = Colors.grey.shade400
      ..strokeWidth = lineWidth
      ..strokeCap = StrokeCap.round;

    final List<Offset> points = [];

    double gridSize = size.width / Constants.gridAmount;

    for (int x = 0; x <= Constants.gridAmount; x++) {
      for (int y = 0; y <= (size.height / gridSize).ceil(); y++) {
        points.add(Offset(x * gridSize, y * gridSize));
      }
    }

    canvas.drawPoints(PointMode.points, points, pointsPaint);
  }

  void _drawLines(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth;

    for (final line in lines) {
      if (line.$1 != null && line.$2 != null) {
        canvas.drawLine(line.$1!.toGlobalCoord(size), line.$2!.toGlobalCoord(size), linePaint);
      }
    }
  }

  void _drawCurrentLine(Canvas canvas, Size size) {
    if (currentLine.$1 != null && currentLine.$2 != null) {
      final linePaint = Paint()
        ..color = Colors.green
        ..strokeWidth = lineWidth;

      canvas.drawLine(currentLine.$1!.toGlobalCoord(size), currentLine.$2!.toGlobalCoord(size), linePaint);
    }
  }

  void _drawMeasurements(Canvas canvas, Size size) {
    final measPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = lineWidth / 2;

    _drawHorizontalMeasLines(canvas, size, measPaint);

    _drawVerticalMeasLines(canvas, size, measPaint);
  }

  void _drawHorizontalMeasLines(Canvas canvas, Size size, Paint measPaint) {
    final horSegments = segments.where((e) => e.direction == SegmentDirection.horizontal).toList();
    if (horSegments.isEmpty) return;

    double gridSize = size.width / Constants.gridAmount;

    final mainHorSegment = horSegments.firstWhereOrNull((s) => s.isMain);

    if (mainHorSegment != null) {
      final p1 = mainHorSegment.p1.toGlobalCoord(size);
      final p2 = mainHorSegment.p2.toGlobalCoord(size);

      canvas.drawLine(
        Offset(p1.dx, p1.dy - 2 * gridSize),
        Offset(p1.dx, p1.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p2.dx, p1.dy - 2 * gridSize),
        Offset(p2.dx, p1.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p1.dx, p1.dy - 1.75 * gridSize),
        Offset(p2.dx, p1.dy - 1.75 * gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx, p1.dy - 1.75 * gridSize), Direction.left, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p2.dx, p1.dy - 1.75 * gridSize), Direction.right, gridSize),
        measPaint,
      );

      _drawHorizontalSegmentSize(canvas, mainHorSegment.size, p1.dx, p2.dx, p1.dy - 1.75 * gridSize);
    }
    horSegments.removeWhere((e) => e.isMain);
    if (horSegments.isEmpty) return;

    for (final segment in horSegments) {
      final p1 = segment.p1.toGlobalCoord(size);
      final p2 = segment.p2.toGlobalCoord(size);
      canvas.drawLine(
        Offset(p2.dx, p1.dy - 1 * gridSize),
        Offset(p2.dx, p1.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p1.dx, p1.dy - 0.75 * gridSize),
        Offset(p2.dx, p1.dy - 0.75 * gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx, p1.dy - 0.75 * gridSize), Direction.left, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p2.dx, p1.dy - 0.75 * gridSize), Direction.right, gridSize),
        measPaint,
      );
      _drawHorizontalSegmentSize(canvas, segment.size, p1.dx, p2.dx, p1.dy - 0.75 * gridSize);
    }
  }

  void _drawVerticalMeasLines(Canvas canvas, Size size, Paint measPaint) {
    final verSegments = segments.where((e) => e.direction == SegmentDirection.vertical).toList();
    if (verSegments.isEmpty) return;

    double gridSize = size.width / Constants.gridAmount;

    final mainVerSegment = verSegments.firstWhereOrNull((s) => s.isMain);

    if (mainVerSegment != null) {
      final p1 = mainVerSegment.p1.toGlobalCoord(size);
      final p2 = mainVerSegment.p2.toGlobalCoord(size);
      canvas.drawLine(
        Offset(p1.dx - 2 * gridSize, p1.dy),
        Offset(p1.dx, p1.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p1.dx - 2 * gridSize, p2.dy),
        Offset(p1.dx, p2.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p1.dx - 1.75 * gridSize, p1.dy),
        Offset(p1.dx - 1.75 * gridSize, p2.dy),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx - 1.75 * gridSize, p1.dy), Direction.up, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx - 1.75 * gridSize, p2.dy), Direction.down, gridSize),
        measPaint,
      );

      _drawVerticalSegmentSize(
        canvas,
        mainVerSegment.size,
        p1.dy,
        p2.dy,
        p1.dx - 1.75 * gridSize,
      );
    }

    verSegments.removeWhere((e) => e.isMain);
    if (verSegments.isEmpty) return;

    for (final segment in verSegments) {
      final p1 = segment.p1.toGlobalCoord(size);
      final p2 = segment.p2.toGlobalCoord(size);

      canvas.drawLine(
        Offset(p1.dx - 1 * gridSize, p2.dy),
        Offset(p1.dx, p2.dy),
        measPaint,
      );
      canvas.drawLine(
        Offset(p1.dx - 0.75 * gridSize, p1.dy),
        Offset(p1.dx - 0.75 * gridSize, p2.dy),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx - 0.75 * gridSize, p1.dy), Direction.up, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(p1.dx - 0.75 * gridSize, p2.dy), Direction.down, gridSize),
        measPaint,
      );
      _drawVerticalSegmentSize(canvas, segment.size, p1.dy, p2.dy, p1.dx - 0.75 * gridSize);
    }
  }

  void _drawHorizontalSegmentSize(Canvas canvas, String? size, double x1, double x2, double y) {
    final center = Offset(x1 + (x2 - x1) / 2, y);

    final text = TextSpan(
      text: size ?? '?',
      style: const TextStyle(
        color: Colors.red,
        fontSize: 2.5,
      ),
    );

    final textPainter = TextPainter(
      text: text,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final textOffset = Offset(center.dx - textPainter.width / 2, center.dy - textPainter.height);
    textPainter.paint(canvas, textOffset);
  }

  void _drawVerticalSegmentSize(Canvas canvas, String? size, double y1, double y2, double x) {
    final center = Offset(x, y1 + (y2 - y1) / 2);

    final text = TextSpan(
      text: size ?? '?',
      style: const TextStyle(
        color: Colors.red,
        fontSize: 2.5,
      ),
    );

    final textPainter = TextPainter(
      text: text,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    final textOffset = Offset(center.dx - textPainter.height, center.dy + textPainter.width / 2);

    canvas.save();
    canvas.translate(textOffset.dx, textOffset.dy);
    canvas.rotate(-pi / 2);
    textPainter.paint(canvas, Offset.zero);
    canvas.restore();
  }

  Path _getTrianglePath(Offset p, Direction direction, double gridSize) {
    Path path = Path();

    path.moveTo(p.dx, p.dy);

    switch (direction) {
      case Direction.left:
        path.lineTo(p.dx + gridSize / 3, p.dy - gridSize / 8);
      case Direction.right:
        path.lineTo(p.dx - gridSize / 3, p.dy - gridSize / 8);
      case Direction.up:
        path.lineTo(p.dx - gridSize / 8, p.dy + gridSize / 3);
      case Direction.down:
        path.lineTo(p.dx - gridSize / 8, p.dy - gridSize / 3);
    }

    switch (direction) {
      case Direction.left:
        path.lineTo(p.dx + gridSize / 3, p.dy + gridSize / 8);
      case Direction.right:
        path.lineTo(p.dx - gridSize / 3, p.dy + gridSize / 8);
      case Direction.up:
        path.lineTo(p.dx + gridSize / 8, p.dy + gridSize / 3);
      case Direction.down:
        path.lineTo(p.dx + gridSize / 8, p.dy - gridSize / 3);
    }

    path.lineTo(p.dx, p.dy);

    return path;
  }
}
