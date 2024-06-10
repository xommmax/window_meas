import 'package:flutter/material.dart';
import 'package:window_meas/features/editor/bloc/editor_cubit.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:window_meas/features/editor/view/tap_helper.dart';

class EditorGestureDetector extends GestureDetector {
  final BuildContext context;
  final Size size;
  final Function(SizeSegment) onSizeSegmentAdded;
  final Function(Offset) onLineStarted;
  final Function(Offset) onLineUpdated;
  final Function() onLineCompleted;
  final Function(double, Offset) onScaleUpdated;
  final Function() onScaleEnded;
  final Function(Offset) onOpeningTypeSelectionStarted;
  final Function(Offset) onOpeningTypeSelectionUpdated;
  final Function() onOpeningTypeSelectionCompleted;
  final Function(Offset) onFillingTypeSelectionStarted;
  final Function(Offset) onFillingTypeSelectionUpdated;
  final Function() onFillingTypeSelectionCompleted;
  final Function(Offset) onArchStarted;
  final Function(Offset) onArchUpdated;
  final Function() onArchCompleted;

  final EditorMode mode;
  final GestureDetector _delegateDetector;

  EditorGestureDetector({
    required this.context,
    required this.size,
    required this.mode,
    required this.onSizeSegmentAdded,
    required this.onLineStarted,
    required this.onLineUpdated,
    required this.onLineCompleted,
    required this.onScaleUpdated,
    required this.onScaleEnded,
    required this.onOpeningTypeSelectionStarted,
    required this.onOpeningTypeSelectionUpdated,
    required this.onOpeningTypeSelectionCompleted,
    required this.onFillingTypeSelectionStarted,
    required this.onFillingTypeSelectionUpdated,
    required this.onFillingTypeSelectionCompleted,
    required this.onArchStarted,
    required this.onArchUpdated,
    required this.onArchCompleted,
    required super.child,
    super.key,
  }) : _delegateDetector = switch (mode) {
          EditorMode.draw => _DrawGestureDetector(
              onLineStarted: onLineStarted,
              onLineUpdated: onLineUpdated,
              onLineCompleted: onLineCompleted,
              size: size,
            ),
          EditorMode.move => _MoveGestureDetector(
              onScaleUpdated: onScaleUpdated,
              onScaleEnded: onScaleEnded,
            ),
          EditorMode.openingType => _OpeningTypeGestureDetector(
              onOpeningTypeSelectionStarted: onOpeningTypeSelectionStarted,
              onOpeningTypeSelectionUpdated: onOpeningTypeSelectionUpdated,
              onOpeningTypeSelectionCompleted: onOpeningTypeSelectionCompleted,
              size: size,
            ),
          EditorMode.fillingType => _FillingTypeGestureDetector(
              onFillingTypeSelectionStarted: onFillingTypeSelectionStarted,
              onFillingTypeSelectionUpdated: onFillingTypeSelectionUpdated,
              onFillingTypeSelectionCompleted: onFillingTypeSelectionCompleted,
              size: size,
            ),
          EditorMode.arch => _ArchGestureDetector(
              onArchStarted: onArchStarted,
              onArchUpdated: onArchUpdated,
              onArchCompleted: onArchCompleted,
              size: size,
            ),
        };

  @override
  GestureTapUpCallback? get onTapUp => (details) async {
        if (_delegateDetector.onTapUp != null) {
          _delegateDetector.onTapUp!.call(details);
        } else {
          final segment = await onEditorTapUp(details.localPosition, context, size);
          if (segment != null) {
            onSizeSegmentAdded(segment);
          }
        }
      };

  @override
  GestureDragDownCallback? get onPanDown => _delegateDetector.onPanDown;

  @override
  GestureDragUpdateCallback? get onPanUpdate => _delegateDetector.onPanUpdate;

  @override
  GestureDragEndCallback? get onPanEnd => _delegateDetector.onPanEnd;

  @override
  GestureScaleUpdateCallback? get onScaleUpdate => _delegateDetector.onScaleUpdate;

  @override
  GestureScaleEndCallback? get onScaleEnd => _delegateDetector.onScaleEnd;
}

class _DrawGestureDetector extends GestureDetector {
  final Function(Offset) onLineStarted;
  final Function(Offset) onLineUpdated;
  final Function() onLineCompleted;
  final Size size;

  _DrawGestureDetector({
    required this.onLineStarted,
    required this.onLineUpdated,
    required this.onLineCompleted,
    required this.size,
  });

  @override
  GestureDragDownCallback? get onPanDown =>
      (details) => onLineStarted(details.localPosition.toInnerCoord(size));

  @override
  GestureDragUpdateCallback? get onPanUpdate =>
      (details) => onLineUpdated(details.localPosition.toInnerCoord(size));

  @override
  GestureDragEndCallback? get onPanEnd => (details) => onLineCompleted();
}

class _MoveGestureDetector extends GestureDetector {
  final Function(double, Offset) onScaleUpdated;
  final Function() onScaleEnded;

  _MoveGestureDetector({
    required this.onScaleUpdated,
    required this.onScaleEnded,
  });

  @override
  GestureScaleUpdateCallback? get onScaleUpdate =>
      (details) => onScaleUpdated(details.scale, details.focalPointDelta);

  @override
  GestureScaleEndCallback? get onScaleEnd => (details) => onScaleEnded();
}

class _OpeningTypeGestureDetector extends GestureDetector {
  final Function(Offset) onOpeningTypeSelectionStarted;
  final Function(Offset) onOpeningTypeSelectionUpdated;
  final Function() onOpeningTypeSelectionCompleted;
  final Size size;

  _OpeningTypeGestureDetector({
    required this.onOpeningTypeSelectionStarted,
    required this.onOpeningTypeSelectionUpdated,
    required this.onOpeningTypeSelectionCompleted,
    required this.size,
  });

  @override
  GestureTapUpCallback? get onTapUp => (details) {
        onOpeningTypeSelectionStarted(details.localPosition.toInnerCoord(size));
        onOpeningTypeSelectionCompleted();
      };

  @override
  GestureDragDownCallback? get onPanDown =>
      (details) => onOpeningTypeSelectionStarted(details.localPosition.toInnerCoord(size));

  @override
  GestureDragUpdateCallback? get onPanUpdate =>
      (details) => onOpeningTypeSelectionUpdated(details.localPosition.toInnerCoord(size));

  @override
  GestureDragEndCallback? get onPanEnd => (details) => onOpeningTypeSelectionCompleted();
}

class _FillingTypeGestureDetector extends GestureDetector {
  final Function(Offset) onFillingTypeSelectionStarted;
  final Function(Offset) onFillingTypeSelectionUpdated;
  final Function() onFillingTypeSelectionCompleted;
  final Size size;

  _FillingTypeGestureDetector({
    required this.onFillingTypeSelectionStarted,
    required this.onFillingTypeSelectionUpdated,
    required this.onFillingTypeSelectionCompleted,
    required this.size,
  });

  @override
  GestureTapUpCallback? get onTapUp => (details) {
        onFillingTypeSelectionStarted(details.localPosition.toInnerCoord(size));
        onFillingTypeSelectionCompleted();
      };

  @override
  GestureDragDownCallback? get onPanDown =>
      (details) => onFillingTypeSelectionStarted(details.localPosition.toInnerCoord(size));

  @override
  GestureDragUpdateCallback? get onPanUpdate =>
      (details) => onFillingTypeSelectionUpdated(details.localPosition.toInnerCoord(size));

  @override
  GestureDragEndCallback? get onPanEnd => (details) => onFillingTypeSelectionCompleted();
}

class _ArchGestureDetector extends GestureDetector {
  final Function(Offset) onArchStarted;
  final Function(Offset) onArchUpdated;
  final Function() onArchCompleted;
  final Size size;

  _ArchGestureDetector({
    required this.onArchStarted,
    required this.onArchUpdated,
    required this.onArchCompleted,
    required this.size,
  });

  @override
  GestureDragDownCallback? get onPanDown =>
      (details) => onArchStarted(details.localPosition.toInnerCoord(size));

  @override
  GestureDragUpdateCallback? get onPanUpdate =>
      (details) => onArchUpdated(details.localPosition.toInnerCoord(size));

  @override
  GestureDragEndCallback? get onPanEnd => (details) => onArchCompleted();
}
