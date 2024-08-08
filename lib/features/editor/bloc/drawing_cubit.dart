import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/features/calc/geo_helper.dart';
import 'package:window_meas/features/editor/data/model/arch.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/ext/line_ext.dart';
import 'package:window_meas/features/calc/polygon_finder/polygon_finder.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record.dart';

@injectable
class DrawingCubit extends ReplayCubit<DrawingState> {
  DrawingCubit() : super(DrawingState.initial());

  void setScheme(Scheme? scheme) {
    if (scheme != null) {
      emit(state.copyWith(scheme: scheme));
    }
  }

  void addLine(Line newLine) {
    if (newLine.p1 == newLine.p2) return;
    final lines = List.of(state.scheme.lines);

    bool isOverlapping;
    do {
      isOverlapping = false;
      for (final line in lines) {
        if (line.isOverlapping(newLine)) {
          isOverlapping = true;
          lines.remove(line);
          newLine = line.mergeOverlapping(newLine);
          break;
        }
      }
    } while (isOverlapping);

    lines.add(newLine);

    final newSizeSegments = GeoHelper.calculateSegments(state.scheme, newLines: lines);
    final newPolygons = _calculatePolygons(lines);
    final newOpeningTypes = _calculateOpeningTypes(newPolygons);
    final newFillingTypes = _calculateFillingTypes(newPolygons);

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        lines: lines,
        sizeSegments: newSizeSegments,
        polygons: newPolygons,
        openingTypes: newOpeningTypes,
        fillingTypes: newFillingTypes,
      ),
    ));
  }

  List<Polygon> _calculatePolygons(List<Line> lines) => PolygonFinder.polygonsFromSegments(lines);

  void addSizeSegment(SizeSegment segment) {
    final segments = List.of(state.scheme.sizeSegments);
    segments.removeWhere((e) => e.p1 == segment.p1 && e.p2 == segment.p2);
    segments.add(segment);
    emit(state.copyWith(scheme: state.scheme.copyWith(sizeSegments: segments)));
  }

  void addOpeningType(OpeningType openingType, List<Polygon> polygons) {
    List<OpeningTypeRecord> openingTypes = List.of(state.scheme.openingTypes);

    openingTypes.removeWhere((e) => e.hasSamePolygons(polygons));

    if (openingType != OpeningType.blind) {
      openingTypes.add(OpeningTypeRecord(
        openingType: openingType,
        polygons: polygons,
      ));
    }

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        openingTypes: openingTypes,
      ),
    ));
  }

  void addFillingType(
    FillingType fillingType,
    bool sateen,
    bool mosquito,
    List<Polygon> selectedPolygons,
  ) {
    List<FillingTypeRecord> fillingTypes = List.of(state.scheme.fillingTypes);

    fillingTypes.removeWhere((e) => selectedPolygons.contains(e.polygon));

    for (final polygon in selectedPolygons) {
      fillingTypes.add(FillingTypeRecord(
        fillingType: fillingType,
        polygon: polygon,
        sateen: sateen,
        mosquito: mosquito,
      ));
    }

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        fillingTypes: fillingTypes,
      ),
    ));
  }

  List<OpeningTypeRecord> _calculateOpeningTypes(List<Polygon> newPolygons) {
    List<OpeningTypeRecord> newOpeningTypes = [];

    for (final openingType in state.scheme.openingTypes) {
      bool polygonsNotChanged = true;
      for (final polygon in openingType.polygons) {
        if (!newPolygons.contains(polygon)) {
          polygonsNotChanged = false;
          break;
        }
      }

      if (polygonsNotChanged) {
        newOpeningTypes.add(openingType);
      }
    }

    return newOpeningTypes;
  }

  List<FillingTypeRecord> _calculateFillingTypes(List<Polygon> newPolygons) {
    List<FillingTypeRecord> newFillingTypes = [];

    for (final fillingType in state.scheme.fillingTypes) {
      if (newPolygons.contains(fillingType.polygon)) {
        newFillingTypes.add(fillingType);
      }
    }

    return newFillingTypes;
  }

  void addArch(Arch newArch) {
    if (newArch.p1 == newArch.p2 || newArch.top == newArch.p1) return;
    final arches = List.of(state.scheme.arches);
    arches.add(newArch);

    final newSizeSegments = GeoHelper.calculateSegments(state.scheme, newArches: arches);

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        sizeSegments: newSizeSegments,
        arches: arches,
      ),
    ));
  }

  void removeLine(Line line) {
    final lines = List.of(state.scheme.lines);
    lines.remove(line);

    final newSizeSegments = GeoHelper.calculateSegments(state.scheme, newLines: lines);
    final newPolygons = _calculatePolygons(lines);
    final newOpeningTypes = _calculateOpeningTypes(newPolygons);
    final newFillingTypes = _calculateFillingTypes(newPolygons);

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        lines: lines,
        sizeSegments: newSizeSegments,
        polygons: newPolygons,
        openingTypes: newOpeningTypes,
        fillingTypes: newFillingTypes,
      ),
    ));
  }
}
