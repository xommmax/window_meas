import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';

class OpeningTypePainter extends CustomPainter {
  OpeningTypePainter(this.openingType) : drawer = OpeningTypeDrawer(strokeWidth: lineWidth * 2);

  static const lineWidth = 1.0;
  final OpeningType openingType;
  final OpeningTypeDrawer drawer;

  @override
  void paint(Canvas canvas, Size size) {
    _drawWindow(canvas, size);
    drawer.drawOpeningType(canvas, size, openingType);
  }

  @override
  bool shouldRepaint(OpeningTypePainter oldDelegate) => openingType != oldDelegate.openingType;

  void _drawWindow(Canvas canvas, Size size) {
    final windowPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    final windowRect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(windowRect, windowPaint);
  }
}

class OpeningTypeDrawer {
  final Paint openingTypePaint;

  OpeningTypeDrawer({required double strokeWidth})
      : openingTypePaint = Paint()
          ..color = Colors.green
          ..strokeWidth = strokeWidth;

  void drawOpeningType(Canvas canvas, Size size, OpeningType openingType) => switch (openingType) {
        OpeningType.rotaryRight => _drawRotaryRight(canvas, size),
        OpeningType.rotaryLeft => _drawRotaryLeft(canvas, size),
        OpeningType.tiltTurnRight => _drawTiltTurnRight(canvas, size),
        OpeningType.tiltTurnLeft => _drawTiltTurnLeft(canvas, size),
        OpeningType.rotaryMullionRight => _drawRotaryMullionRight(canvas, size),
        OpeningType.rotaryMullionLeft => _drawRotaryMullionLeft(canvas, size),
        OpeningType.slidingRight => _drawSlidingRight(canvas, size),
        OpeningType.slidingLeft => _drawSlidingLeft(canvas, size),
        OpeningType.liftAndSlideRight => _drawLiftAndSlideRight(canvas, size),
        OpeningType.liftAndSlideLeft => _drawLiftAndSlideLeft(canvas, size),
        OpeningType.retractableRight => _drawRetractableRight(canvas, size),
        OpeningType.retractableLeft => _drawRetractableLeft(canvas, size),
        OpeningType.transom => _drawTransom(canvas, size),
        OpeningType.topHung => _drawTopHung(canvas, size),
        OpeningType.midHung => _drawMidHung(canvas, size),
        OpeningType.blind => _drawBlind(canvas, size),
      };

  void _drawRotaryRight(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width, size.height / 2),
      Offset(0, size.height),
      openingTypePaint,
    );
  }

  void _drawRotaryLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(0, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height),
      openingTypePaint,
    );
  }

  void _drawTiltTurnRight(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width, size.height / 2),
      Offset(0, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width, size.height),
      openingTypePaint,
    );
  }

  void _drawTiltTurnLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(0, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width, size.height),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(0, size.height),
      openingTypePaint,
    );
  }

  void _drawRotaryMullionRight(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width, size.height / 2),
      Offset(0, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.8, 0),
      Offset(size.width * 0.8, size.height * 0.1),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.8, size.height),
      Offset(size.width * 0.8, size.height * 0.9),
      openingTypePaint,
    );
  }

  void _drawRotaryMullionLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width, 0),
      Offset(0, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.2, 0),
      Offset(size.width * 0.2, size.height * 0.1),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.2, size.height),
      Offset(size.width * 0.2, size.height * 0.9),
      openingTypePaint,
    );
  }

  void _drawSlidingRight(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width * 0.3, size.height / 2),
      Offset(size.width * 0.7, size.height / 2),
      openingTypePaint,
    );

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.7, size.height / 2 - 4)
          ..lineTo(size.width * 0.7 + 8, size.height / 2)
          ..lineTo(size.width * 0.7, size.height / 2 + 4)
          ..close(),
        openingTypePaint);
  }

  void _drawSlidingLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width * 0.7, size.height / 2),
      Offset(size.width * 0.3, size.height / 2),
      openingTypePaint,
    );

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.3, size.height / 2 - 4)
          ..lineTo(size.width * 0.3 - 8, size.height / 2)
          ..lineTo(size.width * 0.3, size.height / 2 + 4)
          ..close(),
        openingTypePaint);
  }

  void _drawLiftAndSlideRight(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width * 0.3, size.height * 0.65),
      Offset(size.width * 0.3, size.height / 2),
      openingTypePaint,
    );

    canvas.drawLine(
      Offset(size.width * 0.3, size.height / 2),
      Offset(size.width * 0.7, size.height / 2),
      openingTypePaint,
    );

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.7, size.height / 2 - 4)
          ..lineTo(size.width * 0.7 + 8, size.height / 2)
          ..lineTo(size.width * 0.7, size.height / 2 + 4)
          ..close(),
        openingTypePaint);
  }

  void _drawLiftAndSlideLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(size.width * 0.7, size.height * 0.65),
      Offset(size.width * 0.7, size.height / 2),
      openingTypePaint,
    );

    canvas.drawLine(
      Offset(size.width * 0.7, size.height / 2),
      Offset(size.width * 0.3, size.height / 2),
      openingTypePaint,
    );

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.3, size.height / 2 - 4)
          ..lineTo(size.width * 0.3 - 8, size.height / 2)
          ..lineTo(size.width * 0.3, size.height / 2 + 4)
          ..close(),
        openingTypePaint);
  }

  void _drawRetractableRight(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.3 - 4, size.height / 2),
      Offset(size.width * 0.7, size.height / 2),
      openingTypePaint,
    );
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.7 - 4, size.height / 2 - 4)
        ..lineTo(size.width * 0.7 + 4, size.height / 2)
        ..lineTo(size.width * 0.7 - 4, size.height / 2 + 4)
        ..close(),
      openingTypePaint,
    );
  }

  void _drawRetractableLeft(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width * 0.7 + 4, size.height / 2),
      Offset(size.width * 0.3, size.height / 2),
      openingTypePaint,
    );

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.3 + 4, size.height / 2 - 4)
          ..lineTo(size.width * 0.3 - 4, size.height / 2)
          ..lineTo(size.width * 0.3 + 4, size.height / 2 + 4)
          ..close(),
        openingTypePaint);
  }

  void _drawTransom(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width, size.height),
      openingTypePaint,
    );
  }

  void _drawTopHung(Canvas canvas, Size size) {
    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width / 2, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, size.height),
      Offset(size.width, 0),
      openingTypePaint,
    );
  }

  void _drawMidHung(Canvas canvas, Size size) {
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width / 2, 0),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, 0),
      Offset(size.width, size.height / 2),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width / 2, size.height),
      openingTypePaint,
    );
    canvas.drawLine(
      Offset(size.width / 2, size.height),
      Offset(size.width, size.height / 2),
      openingTypePaint..style = PaintingStyle.stroke,
    );
  }

  void _drawBlind(Canvas canvas, Size size) {}
}
