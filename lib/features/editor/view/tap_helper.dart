import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/constants.dart';
import 'package:window_meas/features/editor/ext/offset_ext.dart';
import 'package:window_meas/features/editor/bloc/drawing_cubit.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/view/meas_input_dialog.dart';

Future<SizeSegment?> onEditorSegmentTapUp(Offset position, BuildContext context, Size size) async {
  final segments = context.read<DrawingCubit>().state.scheme.sizeSegments;
  if (segments.isEmpty) return null;

  final selectedSegment =
      _checkHorizontal(segments, size, position) ?? _checkVertical(segments, size, position);

  if (selectedSegment != null && context.mounted) {
    final (String, String)? sizeAndComment =
        await MeasurementInputDialog.show(context, selectedSegment);
    if (sizeAndComment != null) {
      return selectedSegment.copyWith(size: sizeAndComment.$1, comment: sizeAndComment.$2);
    }
  }
  return null;
}

SizeSegment? _checkHorizontal(List<SizeSegment> segments, Size size, Offset position) {
  final horSegments = segments.where((e) => e.direction == SegmentDirection.horizontal).toList();
  if (horSegments.isEmpty) return null;

  final gridSize = size.width / Constants.gridAmount;

  final mainHorSegment = horSegments.firstWhereOrNull((s) => s.isMain);

  if (mainHorSegment != null) {
    final horMainPath = Path()
      ..moveTo(mainHorSegment.p1.toGlobalCoord(size).dx,
          mainHorSegment.p1.toGlobalCoord(size).dy - 2.5 * gridSize)
      ..lineTo(mainHorSegment.p1.toGlobalCoord(size).dx,
          mainHorSegment.p1.toGlobalCoord(size).dy - 1.5 * gridSize)
      ..lineTo(mainHorSegment.p2.toGlobalCoord(size).dx,
          mainHorSegment.p1.toGlobalCoord(size).dy - 1.5 * gridSize)
      ..lineTo(mainHorSegment.p2.toGlobalCoord(size).dx,
          mainHorSegment.p1.toGlobalCoord(size).dy - 2.5 * gridSize)
      ..lineTo(mainHorSegment.p1.toGlobalCoord(size).dx,
          mainHorSegment.p1.toGlobalCoord(size).dy - 2.5 * gridSize);

    if (horMainPath.contains(position)) {
      return mainHorSegment;
    }
  }

  horSegments.removeWhere((e) => e.isMain);
  if (horSegments.isEmpty) return null;

  for (final segment in horSegments) {
    final horSubPath = Path()
      ..moveTo(
          segment.p1.toGlobalCoord(size).dx, segment.p1.toGlobalCoord(size).dy - 1.5 * gridSize)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx, segment.p1.toGlobalCoord(size).dy - 0.5 * gridSize)
      ..lineTo(
          segment.p2.toGlobalCoord(size).dx, segment.p1.toGlobalCoord(size).dy - 0.5 * gridSize)
      ..lineTo(
          segment.p2.toGlobalCoord(size).dx, segment.p1.toGlobalCoord(size).dy - 1.5 * gridSize)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx, segment.p1.toGlobalCoord(size).dy - 1.5 * gridSize);

    if (horSubPath.contains(position)) {
      return segment;
    }
  }

  return null;
}

SizeSegment? _checkVertical(List<SizeSegment> segments, Size size, Offset position) {
  final verSegments = segments.where((e) => e.direction == SegmentDirection.vertical).toList();

  if (verSegments.isEmpty) return null;

  final gridSize = size.width / Constants.gridAmount;

  final mainVerSegment = verSegments.firstWhereOrNull((s) => s.isMain);

  if (mainVerSegment != null) {
    final verMainPath = Path()
      ..moveTo(mainVerSegment.p1.toGlobalCoord(size).dx - 2.5 * gridSize,
          mainVerSegment.p1.toGlobalCoord(size).dy)
      ..lineTo(mainVerSegment.p1.toGlobalCoord(size).dx - 1.5 * gridSize,
          mainVerSegment.p1.toGlobalCoord(size).dy)
      ..lineTo(mainVerSegment.p1.toGlobalCoord(size).dx - 1.5 * gridSize,
          mainVerSegment.p2.toGlobalCoord(size).dy)
      ..lineTo(mainVerSegment.p1.toGlobalCoord(size).dx - 2.5 * gridSize,
          mainVerSegment.p2.toGlobalCoord(size).dy)
      ..lineTo(mainVerSegment.p1.toGlobalCoord(size).dx - 2.5 * gridSize,
          mainVerSegment.p1.toGlobalCoord(size).dy);

    if (verMainPath.contains(position)) {
      return mainVerSegment;
    }
  }

  verSegments.removeWhere((e) => e.isMain);
  if (verSegments.isEmpty) return null;

  for (final segment in verSegments) {
    final verSubPath = Path()
      ..moveTo(
          segment.p1.toGlobalCoord(size).dx - 1.5 * gridSize, segment.p1.toGlobalCoord(size).dy)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx - 0.5 * gridSize, segment.p1.toGlobalCoord(size).dy)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx - 0.5 * gridSize, segment.p2.toGlobalCoord(size).dy)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx - 1.5 * gridSize, segment.p2.toGlobalCoord(size).dy)
      ..lineTo(
          segment.p1.toGlobalCoord(size).dx - 1.5 * gridSize, segment.p1.toGlobalCoord(size).dy);

    if (verSubPath.contains(position)) {
      return segment;
    }
  }

  return null;
}
