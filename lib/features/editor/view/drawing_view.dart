import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/ext/offset_ext.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/view/components.dart';
import 'package:window_meas/features/editor/view/meas_input_dialog.dart';
import 'package:window_meas/features/editor/view/painter.dart';
import 'package:window_meas/features/editor/view/tap_helper.dart';

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
                  onTapUp: (d) => _onGridTapUp(d, context, size),
                  onPanDown: state.mode == EditorMode.move
                      ? null
                      : (details) => setState(() => currentLine = (details.localPosition.toInnerCoord(size), null)),
                  onPanUpdate: state.mode == EditorMode.move
                      ? null
                      : (details) =>
                          setState(() => currentLine = (currentLine.$1, details.localPosition.toInnerCoord(size))),
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
                          segments: state.segments,
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

  Future<void> _onGridTapUp(TapUpDetails details, BuildContext context, Size size) async {
    final segment = await onTapUp(details.localPosition, context, size);
    if (segment != null && context.mounted) {
      context.read<DrawingCubit>().addSegment(segment);
    }
  }
}
