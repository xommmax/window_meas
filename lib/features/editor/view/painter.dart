import 'dart:collection';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/common/ext/offset_ext.dart';
import 'package:window_meas/features/editor/view/components.dart';

class MyCustomPainter extends CustomPainter {
  static const lineWidth = 0.5;

  final List<Line> lines;
  final Line currentLine;

  MyCustomPainter({
    required this.lines,
    required this.currentLine,
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
      !listEquals(lines, oldDelegate.lines) || currentLine != oldDelegate.currentLine;

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
    double gridSize = size.width / Constants.gridAmount;

    final SplayTreeSet<double> xNodes = SplayTreeSet();
    final SplayTreeSet<double> yNodes = SplayTreeSet();

    for (final line in lines) {
      if (line.$1 != null && line.$2 != null) {
        final p1 = line.$1!.toGlobalCoord(size);
        final p2 = line.$2!.toGlobalCoord(size);
        xNodes.addAll([p1.dx, p2.dx]);
        yNodes.addAll([p1.dy, p2.dy]);
      }
    }

    final measPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = lineWidth / 2;

    _drawHorizontalMeasLines(canvas, xNodes, yNodes, gridSize, measPaint);

    _drawVerticalMeasLines(canvas, xNodes, yNodes, gridSize, measPaint);
  }

  void _drawHorizontalMeasLines(Canvas canvas, Iterable xNodes, Iterable yNodes, double gridSize, Paint measPaint) {
    if (xNodes.length < 2) return;

    canvas.drawLine(
      Offset(xNodes.first, yNodes.first - 2 * gridSize),
      Offset(xNodes.first, yNodes.first),
      measPaint,
    );
    canvas.drawLine(
      Offset(xNodes.last, yNodes.first - 2 * gridSize),
      Offset(xNodes.last, yNodes.first),
      measPaint,
    );
    canvas.drawLine(
      Offset(xNodes.first, yNodes.first - 1.75 * gridSize),
      Offset(xNodes.last, yNodes.first - 1.75 * gridSize),
      measPaint,
    );
    canvas.drawPath(
      _getTrianglePath(Offset(xNodes.first, yNodes.first - 1.75 * gridSize), Direction.left, gridSize),
      measPaint,
    );
    canvas.drawPath(
      _getTrianglePath(Offset(xNodes.last, yNodes.first - 1.75 * gridSize), Direction.right, gridSize),
      measPaint,
    );

    _drawHorizontalQuestionMark(canvas, xNodes.first, xNodes.last, yNodes.first - 1.75 * gridSize, gridSize);

    if (xNodes.length < 3) return;

    for (int i = 1; i < xNodes.length; i++) {
      canvas.drawLine(
        Offset(xNodes.elementAt(i), yNodes.first - 1 * gridSize),
        Offset(xNodes.elementAt(i), yNodes.first),
        measPaint,
      );
      canvas.drawLine(
        Offset(xNodes.elementAt(i - 1), yNodes.first - 0.75 * gridSize),
        Offset(xNodes.elementAt(i), yNodes.first - 0.75 * gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(xNodes.elementAt(i - 1), yNodes.first - 0.75 * gridSize), Direction.left, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(xNodes.elementAt(i), yNodes.first - 0.75 * gridSize), Direction.right, gridSize),
        measPaint,
      );
      _drawHorizontalQuestionMark(
          canvas, xNodes.elementAt(i - 1), xNodes.elementAt(i), yNodes.first - 0.75 * gridSize, gridSize);
    }
  }

  void _drawVerticalMeasLines(Canvas canvas, Iterable xNodes, Iterable yNodes, double gridSize, Paint measPaint) {
    if (yNodes.length < 2) return;

    canvas.drawLine(
      Offset(xNodes.first - 2 * gridSize, yNodes.first),
      Offset(xNodes.first, yNodes.first),
      measPaint,
    );
    canvas.drawLine(
      Offset(xNodes.first - 2 * gridSize, yNodes.last),
      Offset(xNodes.first, yNodes.last),
      measPaint,
    );
    canvas.drawLine(
      Offset(xNodes.first - 1.75 * gridSize, yNodes.first),
      Offset(xNodes.first - 1.75 * gridSize, yNodes.last),
      measPaint,
    );
    canvas.drawPath(
      _getTrianglePath(Offset(xNodes.first - 1.75 * gridSize, yNodes.first), Direction.up, gridSize),
      measPaint,
    );
    canvas.drawPath(
      _getTrianglePath(Offset(xNodes.first - 1.75 * gridSize, yNodes.last), Direction.down, gridSize),
      measPaint,
    );

    _drawVerticalQuestionMark(canvas, yNodes.first, yNodes.last, xNodes.first - 1.75 * gridSize, gridSize);

    if (yNodes.length < 3) return;

    for (int i = 1; i < yNodes.length; i++) {
      canvas.drawLine(
        Offset(xNodes.first - 1 * gridSize, yNodes.elementAt(i)),
        Offset(xNodes.first, yNodes.elementAt(i)),
        measPaint,
      );
      canvas.drawLine(
        Offset(xNodes.first - 0.75 * gridSize, yNodes.elementAt(i - 1)),
        Offset(xNodes.first - 0.75 * gridSize, yNodes.elementAt(i)),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(xNodes.first - 0.75 * gridSize, yNodes.elementAt(i - 1)), Direction.up, gridSize),
        measPaint,
      );
      canvas.drawPath(
        _getTrianglePath(Offset(xNodes.first - 0.75 * gridSize, yNodes.elementAt(i)), Direction.down, gridSize),
        measPaint,
      );
      _drawVerticalQuestionMark(
          canvas, yNodes.elementAt(i - 1), yNodes.elementAt(i), xNodes.first - 0.75 * gridSize, gridSize);
    }
  }

  void _drawHorizontalQuestionMark(Canvas canvas, double x1, double x2, double y, double gridSize) {
    final center = Offset(x1 + (x2 - x1) / 2, y);

    const text = TextSpan(
      text: '?',
      style: TextStyle(
        color: Colors.red,
        fontSize: 3,
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

  void _drawVerticalQuestionMark(Canvas canvas, double y1, double y2, double x, double gridSize) {
    final center = Offset(x, y1 + (y2 - y1) / 2);

    const text = TextSpan(
      text: '?',
      style: TextStyle(
        color: Colors.red,
        fontSize: 3,
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
