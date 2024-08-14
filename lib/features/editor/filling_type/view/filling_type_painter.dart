import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';

class FillingTypePainter extends CustomPainter {
  FillingTypePainter(this.fillingType) : drawer = FillingTypeDrawer(strokeWidth: lineWidth * 2);

  static const lineWidth = 0.5;
  final FillingType fillingType;
  final FillingTypeDrawer drawer;

  @override
  void paint(Canvas canvas, Size size) {
    _drawWindow(canvas, size);
    drawer.drawFillingType(canvas, size, fillingType);
  }

  @override
  bool shouldRepaint(FillingTypePainter oldDelegate) => fillingType != oldDelegate.fillingType;

  void _drawWindow(Canvas canvas, Size size) {
    final windowPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    final windowRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(windowRect, windowPaint);
  }
}

class FillingTypeDrawer {
  static const lineWidth = 0.5;

  final _glassPaint = Paint()
    ..color = Colors.transparent
    ..style = PaintingStyle.fill;
  final _panelPaint = Paint()
    ..color = Colors.grey.shade400
    ..style = PaintingStyle.fill;

  final double strokeWidth;

  FillingTypeDrawer({required this.strokeWidth});

  void drawFillingType(Canvas canvas, Size size, FillingType fillingType) => switch (fillingType) {
        FillingType.glass => _drawGlass(canvas, size),
        FillingType.panel => _drawPanel(canvas, size),
        FillingType.tinting => _drawTinting(canvas, size),
        FillingType.connector => _drawPanel(canvas, size),
      };

  void _drawGlass(Canvas canvas, Size size) {
    final windowRect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );
    canvas.drawRect(windowRect, _glassPaint);
  }

  void _drawPanel(Canvas canvas, Size size) {
    final windowRect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );
    canvas.drawRect(windowRect, _panelPaint);
  }

  void _drawTinting(Canvas canvas, Size size) {
    final windowRect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );
    canvas.drawRect(windowRect, _glassPaint);

    final Paint linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    Path diagonalsPath = Path();
    double p = -(size.width > size.height ? size.width : size.height) - lineWidth;
    while (p <= size.width) {
      diagonalsPath.moveTo(p - lineWidth, -lineWidth);
      diagonalsPath.lineTo(p + lineWidth + size.height, lineWidth + size.height);

      p += size.width / 10 + 2 * lineWidth;
    }
    canvas.clipRect(windowRect);
    canvas.drawPath(diagonalsPath, linePaint);
  }
}
