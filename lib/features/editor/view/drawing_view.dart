import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/common/helper.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';

class DrawingView extends StatefulWidget {
  const DrawingView({super.key});

  @override
  DrawingViewState createState() => DrawingViewState();
}

class DrawingViewState extends State<DrawingView> {
  static const minScale = 2.0;
  static const initScale = 6.0;
  static const maxScale = 8.0;

  double currentScale = initScale;
  double prevScale = initScale;

  Offset focalPointDelta = const Offset(0, 0);
  Line currentLine = (null, null);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);

          return Transform.scale(
            scale: currentScale,
            child: Transform.translate(
              offset: focalPointDelta,
              child: BlocBuilder<EditorCubit, EditorState>(
                builder: (context, state) => GestureDetector(
                  onPanDown: state.mode == EditorMode.move
                      ? null
                      : (details) => setState(() => currentLine = (toInnerCoord(details.localPosition, size), null)),
                  onPanUpdate: state.mode == EditorMode.move
                      ? null
                      : (details) =>
                          setState(() => currentLine = (currentLine.$1, toInnerCoord(details.localPosition, size))),
                  onPanEnd: state.mode == EditorMode.move
                      ? null
                      : (details) => setState(() {
                            context.read<DrawingCubit>().addLine(currentLine);
                            currentLine = (null, null);
                          }),
                  onScaleUpdate: state.mode == EditorMode.draw
                      ? null
                      : (details) => setState(() {
                            currentScale = (prevScale * details.scale).clamp(minScale, maxScale);

                            final maxBoundaryX = constraints.maxWidth * (currentScale - 1) / 2 / currentScale;
                            final maxBoundaryY = constraints.maxHeight * (currentScale - 1) / 2 / currentScale;
                            final deltaX =
                                (focalPointDelta.dx + details.focalPointDelta.dx).clamp(-maxBoundaryX, maxBoundaryX);
                            final deltaY =
                                (focalPointDelta.dy + details.focalPointDelta.dy).clamp(-maxBoundaryY, maxBoundaryY);

                            focalPointDelta = Offset(deltaX, deltaY);
                          }),
                  onScaleEnd:
                      state.mode == EditorMode.draw ? null : (details) => setState(() => prevScale = currentScale),
                  child: SizedBox.expand(
                    child: BlocBuilder<DrawingCubit, DrawingState>(
                      builder: (context, state) => CustomPaint(
                        painter: MyCustomPainter(
                          lines: state.lines,
                          currentLine: currentLine,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}

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

    double gridSize = size.width / Constants.gridSpacing;

    for (int x = 0; x <= Constants.gridSpacing; x++) {
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
        canvas.drawLine(toGlobalCoord(line.$1!, size), toGlobalCoord(line.$2!, size), linePaint);
      }
    }
  }

  void _drawCurrentLine(Canvas canvas, Size size) {
    if (currentLine.$1 != null && currentLine.$2 != null) {
      final linePaint = Paint()
        ..color = Colors.green
        ..strokeWidth = lineWidth;

      canvas.drawLine(toGlobalCoord(currentLine.$1!, size), toGlobalCoord(currentLine.$2!, size), linePaint);
    }
  }
}

typedef Line = (Offset?, Offset?);
