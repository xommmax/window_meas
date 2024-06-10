import 'package:injectable/injectable.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:window_meas/features/calc/geo_helper.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/ext/line_ext.dart';
import 'package:window_meas/features/calc/polygon_finder/polygon_finder.dart';
import 'package:window_meas/features/editor/bloc/drawing_state.dart';
import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
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

    final newSizeSegments = GeoHelper.calculateSegments(lines, state.scheme.sizeSegments);
    final newPolygons = _calculatePolygons(lines);
    final newOpeningTypes = _calculateOpeningTypes(newPolygons);

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        lines: lines,
        sizeSegments: newSizeSegments,
        polygons: newPolygons,
        openingTypes: newOpeningTypes,
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

    for (final openingType in openingTypes) {
      if (openingType.hasSamePolygons(polygons)) {
        openingTypes.remove(openingType);
        break;
      }
    }

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
}
