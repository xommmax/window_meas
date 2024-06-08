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

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        lines: lines,
        sizeSegments: GeoHelper.calculateSegments(lines, state.scheme.sizeSegments),
        polygons: _calculatePolygons(lines),
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
    OpeningTypeRecord openingTypeRecord = OpeningTypeRecord(
      openingType: openingType,
      polygons: polygons,
    );

    emit(state.copyWith(
      scheme: state.scheme.copyWith(
        openingTypes: [...state.scheme.openingTypes, openingTypeRecord],
      ),
    ));
  }
}
