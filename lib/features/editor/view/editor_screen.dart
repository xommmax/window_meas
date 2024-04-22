import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';

class EditorScreen extends StatelessWidget {
  const EditorScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<EditorCubit>(
        create: (ctx) => getIt(),
        child: const EditorView(),
      );
}

class EditorView extends StatelessWidget {
  const EditorView({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Stack(
              children: [
                _DrawingView(),
                _ToolButtons(),
              ],
            ),
          ),
        ),
      );
}

class _ToolButtons extends StatelessWidget {
  const _ToolButtons();

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.draw),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.pencil),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<EditorCubit>().changeMode(EditorMode.move),
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: const FaIcon(FontAwesomeIcons.hand),
            ),
          ],
        ),
      );
}

class _DrawingView extends StatefulWidget {
  const _DrawingView();

  @override
  DrawingViewState createState() => DrawingViewState();
}

class DrawingViewState extends State<_DrawingView> {
  static const minScale = 3.0;
  static const initScale = 5.0;
  static const maxScale = 8.0;

  double currentScale = initScale;
  double prevScale = initScale;
  Offset focalPointDelta = const Offset(0, 0);
  Line currentLine = (null, null);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) => Transform.scale(
          scale: currentScale,
          child: Transform.translate(
            offset: focalPointDelta,
            child: BlocBuilder<EditorCubit, EditorState>(
              builder: (context, state) => GestureDetector(
                onPanDown: state.mode == EditorMode.move
                    ? null
                    : (details) => setState(() => currentLine = (details.localPosition, null)),
                onPanUpdate: state.mode == EditorMode.move
                    ? null
                    : (details) => setState(() => currentLine = (currentLine.$1, details.localPosition)),
                onPanEnd: state.mode == EditorMode.move
                    ? null
                    : (details) => setState(() {
                          context.read<EditorCubit>().addLine(currentLine);
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
                  child: CustomPaint(
                    painter: MyCustomPainter(
                      lines: state.drawingState.lines,
                      currentLine: currentLine,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class MyCustomPainter extends CustomPainter {
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
      ..color = Colors.grey
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;

    final List<Offset> points = [];

    double gridSize = size.width / gridSpacingX;

    for (int x = 0; x <= gridSpacingX; x++) {
      for (int y = 0; y <= (size.height / gridSize).ceil(); y++) {
        points.add(Offset(x * gridSize, y * gridSize));
      }
    }

    canvas.drawPoints(PointMode.points, points, pointsPaint);
  }

  void _drawLines(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    for (final line in lines) {
      if (line.$1 != null && line.$2 != null) {
        canvas.drawLine(line.$1!, line.$2!, linePaint);
      }
    }
  }

  void _drawCurrentLine(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = Colors.green
      ..strokeWidth = 1;
    if (currentLine.$1 != null && currentLine.$2 != null) {
      canvas.drawLine(currentLine.$1!, currentLine.$2!, linePaint);
    }
  }
}

typedef Line = (Offset?, Offset?);
const gridSpacingX = 60;
