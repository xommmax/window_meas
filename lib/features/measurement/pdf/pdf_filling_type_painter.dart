import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';

class PdfFillingTypeDrawer {
  final double strokeWidth;

  PdfFillingTypeDrawer({required this.strokeWidth});

  void drawFillingType(PdfGraphics canvas, Size size, FillingType fillingType) =>
      switch (fillingType) {
        FillingType.glass => _drawGlass(canvas, size),
        FillingType.panel => _drawPanel(canvas, size),
        FillingType.tinting => _drawTinting(canvas, size),
      };

  void _drawGlass(PdfGraphics canvas, Size size) {}

  void _drawPanel(PdfGraphics canvas, Size size) {
    canvas.setColor(PdfColors.grey400);

    canvas.drawRect(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    canvas.fillPath();
  }

  _drawTinting(PdfGraphics canvas, Size size) {
    canvas
      ..setColor(PdfColors.black)
      ..setLineWidth(strokeWidth);

    canvas
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..closePath();
    canvas.clipPath();
    double p = -(size.width > size.height ? size.width : size.height) - strokeWidth;
    while (p <= size.width) {
      canvas.drawLine(
        p - strokeWidth,
        -strokeWidth + size.height,
        p + strokeWidth + size.height,
        strokeWidth,
      );
      p += size.width / 10 + 2 * strokeWidth;
    }
  }
}
