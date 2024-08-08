import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/features/calc/geo_helper.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/data/model/arch.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/ext/line_ext.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record.dart';
import 'package:window_meas/features/editor/view/editor_gesture_detector.dart';
import 'package:window_meas/features/editor/view/scheme_painter.dart';
import 'package:window_meas/l10n/localization.dart';

class DrawingView extends StatefulWidget {
  const DrawingView({super.key});

  @override
  DrawingViewState createState() => DrawingViewState();
}

class DrawingViewState extends State<DrawingView> {
  static const minScale = 2.0;
  static const initScale = 4.0;
  static const maxScale = 8.0;

  double currentScale = initScale;
  double prevScale = initScale;

  Offset focalPointDelta = const Offset(0, 0);
  Line? currentLine;
  Line? openingTypeSelection;
  Line? fillingTypeSelection;
  Arch? currentArch;
  bool isMovingArchTop = false;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          final size = Size(constraints.maxWidth, constraints.maxHeight);

          return Transform.scale(
            scale: currentScale,
            child: Transform.translate(
              offset: focalPointDelta,
              child: BlocBuilder<EditorCubit, EditorState>(
                builder: (context, editorState) => EditorGestureDetector(
                  context: context,
                  size: size,
                  mode: editorState.mode,
                  onSizeSegmentAdded: (segment) => (context.mounted)
                      ? context.read<DrawingCubit>().addSizeSegment(segment)
                      : null,
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
                  onOpeningTypeSelectionCompleted: () => _onOpeningTypeSelectionCompleted(
                    context,
                    context.read<DrawingCubit>().state.scheme,
                  ),
                  onFillingTypeSelectionStarted: (point) =>
                      setState(() => fillingTypeSelection = Line(point, point)),
                  onFillingTypeSelectionUpdated: (point) => setState(() =>
                      (fillingTypeSelection != null)
                          ? fillingTypeSelection = Line(fillingTypeSelection!.p1, point)
                          : null),
                  onFillingTypeSelectionCompleted: () => _onFillingTypeSelectionCompleted(
                    context,
                    context.read<DrawingCubit>().state.scheme,
                  ),
                  onArchStarted: (point) => setState(
                      () => isMovingArchTop ? null : currentArch = Arch(point, point, null)),
                  onArchUpdated: (point) => setState(() => (currentArch != null)
                      ? currentArch = Arch(
                          currentArch!.p1,
                          isMovingArchTop ? currentArch!.p2 : Offset(point.dx, currentArch!.p1.dy),
                          isMovingArchTop ? point : null,
                        )
                      : null),
                  onArchCompleted: () {
                    if (currentArch != null &&
                        !context.read<DrawingCubit>().state.scheme.lines.any((line) =>
                            line.contains(currentArch!.p1) || line.contains(currentArch!.p2))) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(context.l10n.archShouldBeOnLine),
                          duration: const Duration(milliseconds: 1400),
                        ),
                      );
                      setState(() => currentArch = null);
                    } else {
                      if (isMovingArchTop) {
                        isMovingArchTop = false;
                        if (currentArch != null) {
                          context.read<DrawingCubit>().addArch(currentArch!);
                        }
                        setState(() => currentArch = null);
                      } else {
                        isMovingArchTop = true;
                      }
                    }
                  },
                  onEraseClicked: (globalPoint) {
                    for (final line in context.read<DrawingCubit>().state.scheme.lines) {
                      if (line.middlePoint.toGlobalCoord(size).distanceBetween(globalPoint) <
                          size.width / Constants.gridAmount) {
                        context.read<DrawingCubit>().removeLine(line);
                        return;
                      }
                    }
                  },
                  child: SizedBox.expand(
                    child: BlocBuilder<DrawingCubit, DrawingState>(
                      builder: (context, drawingState) => CustomPaint(
                        painter: SchemePainter(
                          currentLine: currentLine,
                          scheme: drawingState.scheme,
                          openingTypeSelection: openingTypeSelection,
                          fillingTypeSelection: fillingTypeSelection,
                          currentArch: currentArch,
                          mode: editorState.mode,
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

  Future<void> _onOpeningTypeSelectionCompleted(BuildContext context, Scheme scheme) async {
    if (openingTypeSelection == null) return;

    final overlapPolygons = GeoHelper.getOverlapPolygons(
      openingTypeSelection!,
      scheme.polygons,
    );
    setState(() => openingTypeSelection = null);
    if (overlapPolygons.isEmpty) return;

    final isConvex = GeoHelper.isPolygonsConvex(overlapPolygons);
    if (!isConvex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(context.l10n.polygonNotConvex),
          duration: const Duration(milliseconds: 1400),
        ),
      );
      return;
    }

    OpeningTypeRecord? existingOpeningType;

    for (final openingType in scheme.openingTypes) {
      if (openingType.hasSamePolygons(overlapPolygons)) {
        existingOpeningType = openingType;
        break;
      }
      for (final polygon in openingType.polygons) {
        for (final newPolygon in overlapPolygons) {
          if (polygon == newPolygon) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.l10n.openingTypeAlreadySelected),
                duration: const Duration(milliseconds: 1400),
              ),
            );
            return;
          }
        }
      }
    }
    final OpeningType? openingType = await context.push(
      '/opening_type_list',
      extra: {'selectedOpeningType': existingOpeningType?.openingType},
    );
    if (openingType != null && context.mounted) {
      context.read<DrawingCubit>().addOpeningType(openingType, overlapPolygons);
    }
  }

  Future<void> _onFillingTypeSelectionCompleted(BuildContext context, Scheme scheme) async {
    if (fillingTypeSelection == null) return;

    final overlapPolygons = GeoHelper.getOverlapPolygons(
      fillingTypeSelection!,
      scheme.polygons,
    );
    setState(() => fillingTypeSelection = null);
    if (overlapPolygons.isEmpty) return;

    final FillingType? existingFillingType = (overlapPolygons.length == 1)
        ? scheme.fillingTypes
            .firstWhereOrNull((e) => e.polygon == overlapPolygons.first)
            ?.fillingType
        : null;
    final FillingType? fillingType = await context.push(
      '/filling_type_list',
      extra: {'selectedFillingType': existingFillingType},
    );
    if (fillingType != null && context.mounted) {
      context.read<DrawingCubit>().addFillingType(fillingType, overlapPolygons);
    }
  }
}
