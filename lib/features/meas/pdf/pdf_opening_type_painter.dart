import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';

class PdfOpeningTypeDrawer {
  final double strokeWidth;

  PdfOpeningTypeDrawer({required this.strokeWidth});

  void drawOpeningType(PdfGraphics canvas, Size size, OpeningType openingType) {
    canvas
      ..setColor(PdfColors.green)
      ..setLineWidth(strokeWidth);

    switch (openingType) {
      case OpeningType.rotaryRight:
        _drawRotaryRight(canvas, size);
      case OpeningType.tiltTurnRight:
        _drawTiltTurnRight(canvas, size);
      case OpeningType.rotaryLeft:
        _drawRotaryLeft(canvas, size);
      case OpeningType.tiltTurnLeft:
        _drawTiltTurnLeft(canvas, size);
      case OpeningType.rotaryMullionRight:
        _drawRotaryMullionRight(canvas, size);
      case OpeningType.rotaryMullionLeft:
        _drawRotaryMullionLeft(canvas, size);
      case OpeningType.slidingRight:
        _drawSlidingRight(canvas, size);
      case OpeningType.slidingLeft:
        _drawSlidingLeft(canvas, size);
      case OpeningType.liftAndSlideRight:
        _drawLiftAndSlideRight(canvas, size);
      case OpeningType.liftAndSlideLeft:
        _drawLiftAndSlideLeft(canvas, size);
      case OpeningType.retractableRight:
        _drawRetractableRight(canvas, size);
      case OpeningType.retractableLeft:
        _drawRetractableLeft(canvas, size);
      case OpeningType.transom:
        _drawTransom(canvas, size);
      case OpeningType.topHung:
        _drawTopHung(canvas, size);
      case OpeningType.midHung:
        _drawMidHung(canvas, size);
      case OpeningType.blind:
        _drawBlind(canvas, size);
    }
    canvas.strokePath();
  }

  void _drawRotaryRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      0,
      size.width,
      size.height / 2,
    );
    canvas.drawLine(
      size.width,
      size.height / 2,
      0,
      size.height,
    );
  }

  void _drawRotaryLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width,
      size.height,
      0,
      size.height / 2,
    );
    canvas.drawLine(
      0,
      size.height / 2,
      size.width,
      0,
    );
  }

  void _drawTiltTurnRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      size.height,
      size.width,
      size.height / 2,
    );
    canvas.drawLine(
      size.width,
      size.height / 2,
      0,
      0,
    );
    canvas.drawLine(
      0,
      0,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      size.width,
      0,
    );
    canvas.strokePath();
  }

  void _drawTiltTurnLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width,
      size.height,
      0,
      size.height / 2,
    );
    canvas.drawLine(
      0,
      size.height / 2,
      size.width,
      0,
    );
    canvas.drawLine(
      size.width,
      0,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      0,
      0,
    );
  }

  void _drawRotaryMullionRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      size.height,
      size.width,
      size.height / 2,
    );
    canvas.drawLine(
      size.width,
      size.height / 2,
      0,
      0,
    );
    canvas.drawLine(
      size.width * 0.8,
      size.height,
      size.width * 0.8,
      size.height * 0.9,
    );
    canvas.drawLine(
      size.width * 0.8,
      0,
      size.width * 0.8,
      size.height * 0.1,
    );
  }

  void _drawRotaryMullionLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width,
      size.height,
      0,
      size.height / 2,
    );
    canvas.drawLine(
      0,
      size.height / 2,
      size.width,
      0,
    );
    canvas.drawLine(
      size.width * 0.2,
      size.height,
      size.width * 0.2,
      size.height * 0.9,
    );
    canvas.drawLine(
      size.width * 0.2,
      0,
      size.width * 0.2,
      size.height * 0.1,
    );
  }

  void _drawSlidingRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width * 0.3,
      size.height / 2,
      size.width * 0.7,
      size.height / 2,
    );

    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.7, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.7 + strokeWidth * 4, size.height / 2)
      ..lineTo(size.width * 0.7, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawSlidingLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width * 0.7,
      size.height / 2,
      size.width * 0.3,
      size.height / 2,
    );
    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.3, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.3 - strokeWidth * 4, size.height / 2)
      ..lineTo(size.width * 0.3, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawLiftAndSlideRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width * 0.3,
      size.height * 0.35,
      size.width * 0.3,
      size.height / 2,
    );

    canvas.drawLine(
      size.width * 0.3,
      size.height / 2,
      size.width * 0.7,
      size.height / 2,
    );
    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.7, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.7 + strokeWidth * 4, size.height / 2)
      ..lineTo(size.width * 0.7, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawLiftAndSlideLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      size.width * 0.7,
      size.height * 0.35,
      size.width * 0.7,
      size.height / 2,
    );

    canvas.drawLine(
      size.width * 0.7,
      size.height / 2,
      size.width * 0.3,
      size.height / 2,
    );
    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.3, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.3 - strokeWidth * 4, size.height / 2)
      ..lineTo(size.width * 0.3, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawRetractableRight(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      0,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      size.width,
      0,
    );
    canvas.drawLine(
      size.width * 0.3 - strokeWidth * 2,
      size.height / 2,
      size.width * 0.7,
      size.height / 2,
    );
    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.7 - strokeWidth * 2, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.7 + strokeWidth * 2, size.height / 2)
      ..lineTo(size.width * 0.7 - strokeWidth * 2, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawRetractableLeft(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      0,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      size.width,
      0,
    );
    canvas.drawLine(
      size.width * 0.7 + strokeWidth * 2,
      size.height / 2,
      size.width * 0.3,
      size.height / 2,
    );
    canvas.strokePath();

    canvas
      ..moveTo(size.width * 0.3 + strokeWidth * 2, size.height / 2 + strokeWidth * 2)
      ..lineTo(size.width * 0.3 - strokeWidth * 2, size.height / 2)
      ..lineTo(size.width * 0.3 + strokeWidth * 2, size.height / 2 - strokeWidth * 2)
      ..closePath()
      ..fillPath();
  }

  void _drawTransom(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      0,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      size.width,
      0,
    );
  }

  void _drawTopHung(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      size.height,
      size.width / 2,
      0,
    );
    canvas.drawLine(
      size.width / 2,
      0,
      size.width,
      size.height,
    );
  }

  void _drawMidHung(PdfGraphics canvas, Size size) {
    canvas.drawLine(
      0,
      size.height / 2,
      size.width / 2,
      size.height,
    );
    canvas.drawLine(
      size.width / 2,
      size.height,
      size.width,
      size.height / 2,
    );
    canvas.drawLine(
      0,
      size.height / 2,
      size.width / 2,
      0,
    );
    canvas.drawLine(
      size.width / 2,
      0,
      size.width,
      size.height / 2,
    );
  }

  void _drawBlind(PdfGraphics canvas, Size size) {}
}
