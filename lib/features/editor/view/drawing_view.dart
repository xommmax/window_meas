import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/view/editor_gesture_detector.dart';
import 'package:window_meas/features/editor/view/scheme_painter.dart';

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
  Line? currentLine;
  Line? openingTypeSelection;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);

          return Transform.scale(
            scale: currentScale,
            child: Transform.translate(
              offset: focalPointDelta,
              child: BlocBuilder<EditorCubit, EditorState>(
                builder: (context, state) => EditorGestureDetector(
                  context: context,
                  size: size,
                  onSizeSegmentAdded: (segment) => (context.mounted)
                      ? context.read<DrawingCubit>().addSizeSegment(segment)
                      : null,
                  mode: state.mode,
                  onLineStarted: (point) => setState(() => currentLine = Line(point, point)),
                  onLineUpdated: (point) => setState(() =>
                      (currentLine != null) ? currentLine = Line(currentLine!.p1, point) : null),
                  onLineCompleted: () => setState(() {
                    if (currentLine != null) {
                      context.read<DrawingCubit>().addLine(currentLine!);
                    }
                    currentLine = null;
                  }),
                  onScaleUpdated: (scale, delta) => setState(() {
                    currentScale = (prevScale * scale).clamp(minScale, maxScale);

                    final maxBoundaryX = size.width * (currentScale - 1) / 2 / currentScale;
                    final maxBoundaryY = size.height * (currentScale - 1) / 2 / currentScale;
                    final deltaX =
                        (focalPointDelta.dx + delta.dx).clamp(-maxBoundaryX, maxBoundaryX);
                    final deltaY =
                        (focalPointDelta.dy + delta.dy).clamp(-maxBoundaryY, maxBoundaryY);

                    focalPointDelta = Offset(deltaX, deltaY);
                  }),
                  onScaleEnded: () => setState(() => prevScale = currentScale),
                  onOpeningTypeSelectionStarted: (point) =>
                      setState(() => openingTypeSelection = Line(point, point)),
                  onOpeningTypeSelectionUpdated: (point) => setState(() =>
                      (openingTypeSelection != null)
                          ? openingTypeSelection = Line(openingTypeSelection!.p1, point)
                          : null),
                  onOpeningTypeSelectionCompleted: () async {
                    if (openingTypeSelection != null) {
                      final openingType = await context.push('/opening_type_list');
                      if (openingType != null && context.mounted) {
                        context.read<DrawingCubit>().selectOpeningType(openingTypeSelection!);
                      }
                      setState(() {
                        openingTypeSelection = null;
                      });
                    }
                  },
                  child: SizedBox.expand(
                    child: BlocBuilder<DrawingCubit, DrawingState>(
                      builder: (context, state) => CustomPaint(
                        painter: SchemePainter(
                          currentLine: currentLine,
                          scheme: state.scheme,
                          openingTypeSelection: openingTypeSelection,
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
