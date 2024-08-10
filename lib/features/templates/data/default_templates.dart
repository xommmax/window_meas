import 'dart:ui';

import 'package:window_meas/features/editor/data/model/line.dart';
import 'package:window_meas/features/editor/data/model/polygon.dart';
import 'package:window_meas/features/editor/data/model/scheme.dart';
import 'package:window_meas/features/editor/data/model/segment.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_enum.dart';
import 'package:window_meas/features/editor/filling_type/data/filling_type_record.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_enum.dart';
import 'package:window_meas/features/editor/opening_type/data/opening_type_record.dart';
import 'package:window_meas/features/templates/data/model/template.dart';

List<Template> getDefaultTemplates() => [
      Template(
          id: 18,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-9.0, -12.0), Offset(-9.0, 14.0)),
            Line(Offset(-9.0, 14.0), Offset(7.0, 14.0)),
            Line(Offset(-1.0, -12.0), Offset(-1.0, 14.0)),
            Line(Offset(7.0, -12.0), Offset(7.0, 14.0)),
            Line(Offset(-9.0, -12.0), Offset(7.0, -12.0)),
            Line(Offset(-9.0, 5.0), Offset(7.0, 5.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-9.0, -12.0),
                p2: Offset(7.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-9.0, -12.0),
                p2: Offset(-1.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-1.0, -12.0),
                p2: Offset(7.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-9.0, -12.0),
                p2: Offset(-9.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-9.0, -12.0),
                p2: Offset(-9.0, 5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-9.0, 5.0),
                p2: Offset(-9.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-9.0, 14.0),
              Offset(-9.0, 5.0),
              Offset(-1.0, 5.0),
              Offset(-1.0, 14.0),
              Offset(-9.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-9.0, 5.0),
              Offset(-9.0, -12.0),
              Offset(-1.0, -12.0),
              Offset(-1.0, 5.0),
              Offset(-9.0, 5.0)
            ]),
            Polygon(points: [
              Offset(-1.0, 14.0),
              Offset(7.0, 14.0),
              Offset(7.0, 5.0),
              Offset(-1.0, 5.0),
              Offset(-1.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-1.0, -12.0),
              Offset(7.0, -12.0),
              Offset(7.0, 5.0),
              Offset(-1.0, 5.0),
              Offset(-1.0, -12.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryLeft, polygons: [
              Polygon(points: [
                Offset(-1.0, 14.0),
                Offset(7.0, 14.0),
                Offset(7.0, 5.0),
                Offset(-1.0, 5.0),
                Offset(-1.0, 14.0)
              ]),
              Polygon(points: [
                Offset(-1.0, -12.0),
                Offset(7.0, -12.0),
                Offset(7.0, 5.0),
                Offset(-1.0, 5.0),
                Offset(-1.0, -12.0)
              ])
            ]),
            OpeningTypeRecord(openingType: OpeningType.rotaryMullionRight, polygons: [
              Polygon(points: [
                Offset(-9.0, 14.0),
                Offset(-9.0, 5.0),
                Offset(-1.0, 5.0),
                Offset(-1.0, 14.0),
                Offset(-9.0, 14.0)
              ]),
              Polygon(points: [
                Offset(-9.0, 5.0),
                Offset(-9.0, -12.0),
                Offset(-1.0, -12.0),
                Offset(-1.0, 5.0),
                Offset(-9.0, 5.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-9.0, 14.0),
                  Offset(-9.0, 5.0),
                  Offset(-1.0, 5.0),
                  Offset(-1.0, 14.0),
                  Offset(-9.0, 14.0)
                ]),
                sateen: false,
                mosquito: false),
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-1.0, 14.0),
                  Offset(7.0, 14.0),
                  Offset(7.0, 5.0),
                  Offset(-1.0, 5.0),
                  Offset(-1.0, 14.0)
                ]),
                sateen: false,
                mosquito: false)
          ], arches: [])),
      Template(
          id: 17,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-7.0, -11.0), Offset(-7.0, 14.0)),
            Line(Offset(-7.0, 14.0), Offset(2.0, 14.0)),
            Line(Offset(2.0, 14.0), Offset(2.0, -11.0)),
            Line(Offset(2.0, -11.0), Offset(-7.0, -11.0)),
            Line(Offset(-7.0, 6.0), Offset(2.0, 6.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-7.0, -11.0),
                p2: Offset(2.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-7.0, -11.0),
                p2: Offset(-7.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-7.0, -11.0),
                p2: Offset(-7.0, 6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-7.0, 6.0),
                p2: Offset(-7.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-7.0, 14.0),
              Offset(-7.0, 6.0),
              Offset(2.0, 6.0),
              Offset(2.0, 14.0),
              Offset(-7.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-7.0, 6.0),
              Offset(-7.0, -11.0),
              Offset(2.0, -11.0),
              Offset(2.0, 6.0),
              Offset(-7.0, 6.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryLeft, polygons: [
              Polygon(points: [
                Offset(-7.0, 14.0),
                Offset(-7.0, 6.0),
                Offset(2.0, 6.0),
                Offset(2.0, 14.0),
                Offset(-7.0, 14.0)
              ]),
              Polygon(points: [
                Offset(-7.0, 6.0),
                Offset(-7.0, -11.0),
                Offset(2.0, -11.0),
                Offset(2.0, 6.0),
                Offset(-7.0, 6.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-7.0, 14.0),
                  Offset(-7.0, 6.0),
                  Offset(2.0, 6.0),
                  Offset(2.0, 14.0),
                  Offset(-7.0, 14.0)
                ]),
                sateen: false,
                mosquito: false)
          ], arches: [])),
      Template(
          id: 16,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-7.0, -12.0), Offset(-7.0, 14.0)),
            Line(Offset(-7.0, 14.0), Offset(2.0, 14.0)),
            Line(Offset(2.0, 14.0), Offset(2.0, -12.0)),
            Line(Offset(2.0, -12.0), Offset(-7.0, -12.0)),
            Line(Offset(-7.0, 6.0), Offset(2.0, 6.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-7.0, -12.0),
                p2: Offset(2.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-7.0, -12.0),
                p2: Offset(-7.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-7.0, -12.0),
                p2: Offset(-7.0, 6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-7.0, 6.0),
                p2: Offset(-7.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-7.0, 14.0),
              Offset(-7.0, 6.0),
              Offset(2.0, 6.0),
              Offset(2.0, 14.0),
              Offset(-7.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-7.0, 6.0),
              Offset(-7.0, -12.0),
              Offset(2.0, -12.0),
              Offset(2.0, 6.0),
              Offset(-7.0, 6.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryRight, polygons: [
              Polygon(points: [
                Offset(-7.0, 14.0),
                Offset(-7.0, 6.0),
                Offset(2.0, 6.0),
                Offset(2.0, 14.0),
                Offset(-7.0, 14.0)
              ]),
              Polygon(points: [
                Offset(-7.0, 6.0),
                Offset(-7.0, -12.0),
                Offset(2.0, -12.0),
                Offset(2.0, 6.0),
                Offset(-7.0, 6.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-7.0, 14.0),
                  Offset(-7.0, 6.0),
                  Offset(2.0, 6.0),
                  Offset(2.0, 14.0),
                  Offset(-7.0, 14.0)
                ]),
                sateen: false,
                mosquito: false)
          ], arches: [])),
      Template(
          id: 15,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(14.0, -15.0), Offset(14.0, 13.0)),
            Line(Offset(14.0, 13.0), Offset(5.0, 13.0)),
            Line(Offset(5.0, 13.0), Offset(5.0, -15.0)),
            Line(Offset(14.0, -15.0), Offset(-12.0, -15.0)),
            Line(Offset(-12.0, -15.0), Offset(-12.0, 2.0)),
            Line(Offset(-12.0, 2.0), Offset(14.0, 2.0)),
            Line(Offset(-4.0, -15.0), Offset(-4.0, 2.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(14.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(-4.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-4.0, -15.0),
                p2: Offset(5.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -15.0),
                p2: Offset(14.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(-12.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(-12.0, 2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 2.0),
                p2: Offset(-12.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(14.0, 13.0),
              Offset(14.0, 2.0),
              Offset(5.0, 2.0),
              Offset(5.0, 13.0),
              Offset(14.0, 13.0)
            ]),
            Polygon(points: [
              Offset(14.0, 2.0),
              Offset(14.0, -15.0),
              Offset(5.0, -15.0),
              Offset(5.0, 2.0),
              Offset(14.0, 2.0)
            ]),
            Polygon(points: [
              Offset(5.0, 2.0),
              Offset(-4.0, 2.0),
              Offset(-4.0, -15.0),
              Offset(5.0, -15.0),
              Offset(5.0, 2.0)
            ]),
            Polygon(points: [
              Offset(-4.0, -15.0),
              Offset(-12.0, -15.0),
              Offset(-12.0, 2.0),
              Offset(-4.0, 2.0),
              Offset(-4.0, -15.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryLeft, polygons: [
              Polygon(points: [
                Offset(14.0, 13.0),
                Offset(14.0, 2.0),
                Offset(5.0, 2.0),
                Offset(5.0, 13.0),
                Offset(14.0, 13.0)
              ]),
              Polygon(points: [
                Offset(14.0, 2.0),
                Offset(14.0, -15.0),
                Offset(5.0, -15.0),
                Offset(5.0, 2.0),
                Offset(14.0, 2.0)
              ])
            ]),
            OpeningTypeRecord(openingType: OpeningType.tiltTurnRight, polygons: [
              Polygon(points: [
                Offset(-4.0, -15.0),
                Offset(-12.0, -15.0),
                Offset(-12.0, 2.0),
                Offset(-4.0, 2.0),
                Offset(-4.0, -15.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(14.0, 13.0),
                  Offset(14.0, 2.0),
                  Offset(5.0, 2.0),
                  Offset(5.0, 13.0),
                  Offset(14.0, 13.0)
                ]),
                sateen: false,
                mosquito: false),
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(-4.0, -15.0),
                  Offset(-12.0, -15.0),
                  Offset(-12.0, 2.0),
                  Offset(-4.0, 2.0),
                  Offset(-4.0, -15.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 14,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(3.0, 14.0), Offset(12.0, 14.0)),
            Line(Offset(-12.0, -15.0), Offset(-12.0, 3.0)),
            Line(Offset(-12.0, 3.0), Offset(12.0, 3.0)),
            Line(Offset(-12.0, -15.0), Offset(12.0, -15.0)),
            Line(Offset(12.0, -15.0), Offset(12.0, 14.0)),
            Line(Offset(3.0, -15.0), Offset(3.0, 14.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(12.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(3.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(3.0, -15.0),
                p2: Offset(12.0, -15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(-12.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -15.0),
                p2: Offset(-12.0, 3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 3.0),
                p2: Offset(-12.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(12.0, 14.0),
              Offset(3.0, 14.0),
              Offset(3.0, 3.0),
              Offset(12.0, 3.0),
              Offset(12.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-12.0, 3.0),
              Offset(-12.0, -15.0),
              Offset(3.0, -15.0),
              Offset(3.0, 3.0),
              Offset(-12.0, 3.0)
            ]),
            Polygon(points: [
              Offset(12.0, 3.0),
              Offset(12.0, -15.0),
              Offset(3.0, -15.0),
              Offset(3.0, 3.0),
              Offset(12.0, 3.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(12.0, 14.0),
                Offset(3.0, 14.0),
                Offset(3.0, 3.0),
                Offset(12.0, 3.0),
                Offset(12.0, 14.0)
              ]),
              Polygon(points: [
                Offset(12.0, 3.0),
                Offset(12.0, -15.0),
                Offset(3.0, -15.0),
                Offset(3.0, 3.0),
                Offset(12.0, 3.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(12.0, 14.0),
                  Offset(3.0, 14.0),
                  Offset(3.0, 3.0),
                  Offset(12.0, 3.0),
                  Offset(12.0, 14.0)
                ]),
                sateen: false,
                mosquito: false)
          ], arches: [])),
      Template(
          id: 13,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-12.0, -13.0), Offset(-12.0, 15.0)),
            Line(Offset(-12.0, 15.0), Offset(-3.0, 15.0)),
            Line(Offset(-3.0, 15.0), Offset(-3.0, -13.0)),
            Line(Offset(13.0, -13.0), Offset(13.0, 5.0)),
            Line(Offset(5.0, -13.0), Offset(5.0, 5.0)),
            Line(Offset(-12.0, -13.0), Offset(13.0, -13.0)),
            Line(Offset(13.0, 5.0), Offset(-12.0, 5.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(13.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-3.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-3.0, -13.0),
                p2: Offset(5.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -13.0),
                p2: Offset(13.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-12.0, 15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-12.0, 5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 5.0),
                p2: Offset(-12.0, 15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-12.0, 15.0),
              Offset(-12.0, 5.0),
              Offset(-3.0, 5.0),
              Offset(-3.0, 15.0),
              Offset(-12.0, 15.0)
            ]),
            Polygon(points: [
              Offset(-12.0, 5.0),
              Offset(-12.0, -13.0),
              Offset(-3.0, -13.0),
              Offset(-3.0, 5.0),
              Offset(-12.0, 5.0)
            ]),
            Polygon(points: [
              Offset(-3.0, 5.0),
              Offset(5.0, 5.0),
              Offset(5.0, -13.0),
              Offset(-3.0, -13.0),
              Offset(-3.0, 5.0)
            ]),
            Polygon(points: [
              Offset(13.0, -13.0),
              Offset(13.0, 5.0),
              Offset(5.0, 5.0),
              Offset(5.0, -13.0),
              Offset(13.0, -13.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryRight, polygons: [
              Polygon(points: [
                Offset(-12.0, 15.0),
                Offset(-12.0, 5.0),
                Offset(-3.0, 5.0),
                Offset(-3.0, 15.0),
                Offset(-12.0, 15.0)
              ]),
              Polygon(points: [
                Offset(-12.0, 5.0),
                Offset(-12.0, -13.0),
                Offset(-3.0, -13.0),
                Offset(-3.0, 5.0),
                Offset(-12.0, 5.0)
              ])
            ]),
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(13.0, -13.0),
                Offset(13.0, 5.0),
                Offset(5.0, 5.0),
                Offset(5.0, -13.0),
                Offset(13.0, -13.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-12.0, 15.0),
                  Offset(-12.0, 5.0),
                  Offset(-3.0, 5.0),
                  Offset(-3.0, 15.0),
                  Offset(-12.0, 15.0)
                ]),
                sateen: false,
                mosquito: false),
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(13.0, -13.0),
                  Offset(13.0, 5.0),
                  Offset(5.0, 5.0),
                  Offset(5.0, -13.0),
                  Offset(13.0, -13.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 12,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-12.0, -13.0), Offset(-12.0, 15.0)),
            Line(Offset(-12.0, 15.0), Offset(-3.0, 15.0)),
            Line(Offset(-12.0, -13.0), Offset(14.0, -13.0)),
            Line(Offset(-3.0, -13.0), Offset(-3.0, 15.0)),
            Line(Offset(14.0, -13.0), Offset(14.0, 6.0)),
            Line(Offset(-12.0, 6.0), Offset(14.0, 6.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(14.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-3.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-3.0, -13.0),
                p2: Offset(14.0, -13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-12.0, 15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -13.0),
                p2: Offset(-12.0, 6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 6.0),
                p2: Offset(-12.0, 15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-12.0, 15.0),
              Offset(-12.0, 6.0),
              Offset(-3.0, 6.0),
              Offset(-3.0, 15.0),
              Offset(-12.0, 15.0)
            ]),
            Polygon(points: [
              Offset(-12.0, 6.0),
              Offset(-12.0, -13.0),
              Offset(-3.0, -13.0),
              Offset(-3.0, 6.0),
              Offset(-12.0, 6.0)
            ]),
            Polygon(points: [
              Offset(-3.0, -13.0),
              Offset(14.0, -13.0),
              Offset(14.0, 6.0),
              Offset(-3.0, 6.0),
              Offset(-3.0, -13.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnRight, polygons: [
              Polygon(points: [
                Offset(-12.0, 15.0),
                Offset(-12.0, 6.0),
                Offset(-3.0, 6.0),
                Offset(-3.0, 15.0),
                Offset(-12.0, 15.0)
              ]),
              Polygon(points: [
                Offset(-12.0, 6.0),
                Offset(-12.0, -13.0),
                Offset(-3.0, -13.0),
                Offset(-3.0, 6.0),
                Offset(-12.0, 6.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.panel,
                polygon: Polygon(points: [
                  Offset(-12.0, 15.0),
                  Offset(-12.0, 6.0),
                  Offset(-3.0, 6.0),
                  Offset(-3.0, 15.0),
                  Offset(-12.0, 15.0)
                ]),
                sateen: false,
                mosquito: false)
          ], arches: [])),
      Template(
          id: 11,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-11.0, -10.0), Offset(-11.0, 14.0)),
            Line(Offset(-3.0, -10.0), Offset(-3.0, 14.0)),
            Line(Offset(5.0, -10.0), Offset(5.0, 14.0)),
            Line(Offset(13.0, -10.0), Offset(13.0, 14.0)),
            Line(Offset(-11.0, 14.0), Offset(13.0, 14.0)),
            Line(Offset(13.0, -10.0), Offset(-11.0, -10.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(13.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-3.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-3.0, -10.0),
                p2: Offset(5.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -10.0),
                p2: Offset(13.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-11.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-11.0, 14.0),
              Offset(-11.0, -10.0),
              Offset(-3.0, -10.0),
              Offset(-3.0, 14.0),
              Offset(-11.0, 14.0)
            ]),
            Polygon(points: [
              Offset(-3.0, 14.0),
              Offset(5.0, 14.0),
              Offset(5.0, -10.0),
              Offset(-3.0, -10.0),
              Offset(-3.0, 14.0)
            ]),
            Polygon(points: [
              Offset(5.0, 14.0),
              Offset(13.0, 14.0),
              Offset(13.0, -10.0),
              Offset(5.0, -10.0),
              Offset(5.0, 14.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.rotaryRight, polygons: [
              Polygon(points: [
                Offset(-11.0, 14.0),
                Offset(-11.0, -10.0),
                Offset(-3.0, -10.0),
                Offset(-3.0, 14.0),
                Offset(-11.0, 14.0)
              ])
            ]),
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(5.0, 14.0),
                Offset(13.0, 14.0),
                Offset(13.0, -10.0),
                Offset(5.0, -10.0),
                Offset(5.0, 14.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(5.0, 14.0),
                  Offset(13.0, 14.0),
                  Offset(13.0, -10.0),
                  Offset(5.0, -10.0),
                  Offset(5.0, 14.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 10,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-11.0, -12.0), Offset(-11.0, 15.0)),
            Line(Offset(-3.0, -12.0), Offset(-3.0, 15.0)),
            Line(Offset(5.0, -12.0), Offset(5.0, 15.0)),
            Line(Offset(13.0, -12.0), Offset(13.0, 15.0)),
            Line(Offset(-11.0, 15.0), Offset(13.0, 15.0)),
            Line(Offset(13.0, -12.0), Offset(-11.0, -12.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -12.0),
                p2: Offset(13.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -12.0),
                p2: Offset(-3.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-3.0, -12.0),
                p2: Offset(5.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -12.0),
                p2: Offset(13.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-11.0, -12.0),
                p2: Offset(-11.0, 15.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-11.0, 15.0),
              Offset(-11.0, -12.0),
              Offset(-3.0, -12.0),
              Offset(-3.0, 15.0),
              Offset(-11.0, 15.0)
            ]),
            Polygon(points: [
              Offset(-3.0, 15.0),
              Offset(5.0, 15.0),
              Offset(5.0, -12.0),
              Offset(-3.0, -12.0),
              Offset(-3.0, 15.0)
            ]),
            Polygon(points: [
              Offset(5.0, 15.0),
              Offset(13.0, 15.0),
              Offset(13.0, -12.0),
              Offset(5.0, -12.0),
              Offset(5.0, 15.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(-3.0, 15.0),
                Offset(5.0, 15.0),
                Offset(5.0, -12.0),
                Offset(-3.0, -12.0),
                Offset(-3.0, 15.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(-3.0, 15.0),
                  Offset(5.0, 15.0),
                  Offset(5.0, -12.0),
                  Offset(-3.0, -12.0),
                  Offset(-3.0, 15.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 9,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-10.0, -11.0), Offset(-10.0, 14.0)),
            Line(Offset(0.0, 14.0), Offset(0.0, -11.0)),
            Line(Offset(-10.0, -11.0), Offset(10.0, -11.0)),
            Line(Offset(10.0, -11.0), Offset(10.0, 14.0)),
            Line(Offset(-10.0, 14.0), Offset(10.0, 14.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(0.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(0.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(-10.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-10.0, -11.0),
              Offset(-10.0, 14.0),
              Offset(0.0, 14.0),
              Offset(0.0, -11.0),
              Offset(-10.0, -11.0)
            ]),
            Polygon(points: [
              Offset(0.0, -11.0),
              Offset(10.0, -11.0),
              Offset(10.0, 14.0),
              Offset(0.0, 14.0),
              Offset(0.0, -11.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(0.0, -11.0),
                Offset(10.0, -11.0),
                Offset(10.0, 14.0),
                Offset(0.0, 14.0),
                Offset(0.0, -11.0)
              ])
            ]),
            OpeningTypeRecord(openingType: OpeningType.rotaryMullionRight, polygons: [
              Polygon(points: [
                Offset(-10.0, -11.0),
                Offset(-10.0, 14.0),
                Offset(0.0, 14.0),
                Offset(0.0, -11.0),
                Offset(-10.0, -11.0)
              ])
            ])
          ], fillingTypes: [], arches: [])),
      Template(
          id: 8,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(10.0, 14.0), Offset(10.0, -11.0)),
            Line(Offset(0.0, -11.0), Offset(0.0, 14.0)),
            Line(Offset(-10.0, -11.0), Offset(10.0, -11.0)),
            Line(Offset(-10.0, -11.0), Offset(-10.0, 14.0)),
            Line(Offset(-10.0, 14.0), Offset(10.0, 14.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(0.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(0.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-10.0, -11.0),
                p2: Offset(-10.0, 14.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(10.0, -11.0),
              Offset(10.0, 14.0),
              Offset(0.0, 14.0),
              Offset(0.0, -11.0),
              Offset(10.0, -11.0)
            ]),
            Polygon(points: [
              Offset(0.0, -11.0),
              Offset(-10.0, -11.0),
              Offset(-10.0, 14.0),
              Offset(0.0, 14.0),
              Offset(0.0, -11.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(10.0, -11.0),
                Offset(10.0, 14.0),
                Offset(0.0, 14.0),
                Offset(0.0, -11.0),
                Offset(10.0, -11.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(10.0, -11.0),
                  Offset(10.0, 14.0),
                  Offset(0.0, 14.0),
                  Offset(0.0, -11.0),
                  Offset(10.0, -11.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 7,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-9.0, -11.0), Offset(-9.0, 13.0)),
            Line(Offset(-9.0, 13.0), Offset(10.0, 13.0)),
            Line(Offset(10.0, 13.0), Offset(10.0, -11.0)),
            Line(Offset(0.0, -11.0), Offset(0.0, 13.0)),
            Line(Offset(-9.0, -11.0), Offset(10.0, -11.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-9.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-9.0, -11.0),
                p2: Offset(0.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(0.0, -11.0),
                p2: Offset(10.0, -11.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-9.0, -11.0),
                p2: Offset(-9.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-9.0, 13.0),
              Offset(-9.0, -11.0),
              Offset(0.0, -11.0),
              Offset(0.0, 13.0),
              Offset(-9.0, 13.0)
            ]),
            Polygon(points: [
              Offset(0.0, 13.0),
              Offset(10.0, 13.0),
              Offset(10.0, -11.0),
              Offset(0.0, -11.0),
              Offset(0.0, 13.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnRight, polygons: [
              Polygon(points: [
                Offset(-9.0, 13.0),
                Offset(-9.0, -11.0),
                Offset(0.0, -11.0),
                Offset(0.0, 13.0),
                Offset(-9.0, 13.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(-9.0, 13.0),
                  Offset(-9.0, -11.0),
                  Offset(0.0, -11.0),
                  Offset(0.0, 13.0),
                  Offset(-9.0, 13.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 6,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-8.0, -10.0), Offset(-8.0, 13.0)),
            Line(Offset(-8.0, 13.0), Offset(7.0, 13.0)),
            Line(Offset(7.0, 13.0), Offset(7.0, -10.0)),
            Line(Offset(7.0, -10.0), Offset(-8.0, -10.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-8.0, -10.0),
                p2: Offset(7.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-8.0, -10.0),
                p2: Offset(-8.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-8.0, 13.0),
              Offset(-8.0, -10.0),
              Offset(7.0, -10.0),
              Offset(7.0, 13.0),
              Offset(-8.0, 13.0)
            ])
          ], openingTypes: [
            OpeningTypeRecord(openingType: OpeningType.tiltTurnLeft, polygons: [
              Polygon(points: [
                Offset(-8.0, 13.0),
                Offset(-8.0, -10.0),
                Offset(7.0, -10.0),
                Offset(7.0, 13.0),
                Offset(-8.0, 13.0)
              ])
            ])
          ], fillingTypes: [
            FillingTypeRecord(
                fillingType: FillingType.glass,
                polygon: Polygon(points: [
                  Offset(-8.0, 13.0),
                  Offset(-8.0, -10.0),
                  Offset(7.0, -10.0),
                  Offset(7.0, 13.0),
                  Offset(-8.0, 13.0)
                ]),
                sateen: false,
                mosquito: true)
          ], arches: [])),
      Template(
          id: 5,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-10.0, 13.0), Offset(8.0, 13.0)),
            Line(Offset(-1.0, 13.0), Offset(-1.0, -7.0)),
            Line(Offset(-10.0, -7.0), Offset(8.0, -7.0)),
            Line(Offset(-10.0, -12.0), Offset(8.0, -12.0)),
            Line(Offset(8.0, -12.0), Offset(8.0, 13.0)),
            Line(Offset(-10.0, -12.0), Offset(-10.0, 13.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-10.0, -12.0),
                p2: Offset(8.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -12.0),
                p2: Offset(-1.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-1.0, -12.0),
                p2: Offset(8.0, -12.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-10.0, -12.0),
                p2: Offset(-10.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -12.0),
                p2: Offset(-10.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-10.0, -7.0),
                p2: Offset(-10.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [
            Polygon(points: [
              Offset(-1.0, 13.0),
              Offset(-10.0, 13.0),
              Offset(-10.0, -7.0),
              Offset(-1.0, -7.0),
              Offset(-1.0, 13.0)
            ]),
            Polygon(points: [
              Offset(-1.0, 13.0),
              Offset(8.0, 13.0),
              Offset(8.0, -7.0),
              Offset(-1.0, -7.0),
              Offset(-1.0, 13.0)
            ]),
            Polygon(points: [
              Offset(-10.0, -7.0),
              Offset(-10.0, -12.0),
              Offset(8.0, -12.0),
              Offset(8.0, -7.0),
              Offset(-1.0, -7.0),
              Offset(-10.0, -7.0)
            ])
          ], openingTypes: [], fillingTypes: [], arches: [])),
      Template(
          id: 4,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-11.0, -10.0), Offset(-11.0, 13.0)),
            Line(Offset(-3.0, 13.0), Offset(-3.0, -10.0)),
            Line(Offset(5.0, -10.0), Offset(5.0, 13.0)),
            Line(Offset(-11.0, 13.0), Offset(13.0, 13.0)),
            Line(Offset(13.0, 13.0), Offset(13.0, -10.0)),
            Line(Offset(-11.0, -10.0), Offset(13.0, -10.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(13.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-3.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-3.0, -10.0),
                p2: Offset(5.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -10.0),
                p2: Offset(13.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-11.0, 13.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-11.0, 13.0),
              Offset(-11.0, -10.0),
              Offset(-3.0, -10.0),
              Offset(-3.0, 13.0),
              Offset(-11.0, 13.0)
            ]),
            Polygon(points: [
              Offset(-3.0, 13.0),
              Offset(5.0, 13.0),
              Offset(5.0, -10.0),
              Offset(-3.0, -10.0),
              Offset(-3.0, 13.0)
            ]),
            Polygon(points: [
              Offset(5.0, 13.0),
              Offset(13.0, 13.0),
              Offset(13.0, -10.0),
              Offset(5.0, -10.0),
              Offset(5.0, 13.0)
            ])
          ], openingTypes: [], fillingTypes: [], arches: [])),
      Template(
          id: 3,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-11.0, -10.0), Offset(-11.0, 10.0)),
            Line(Offset(-11.0, 10.0), Offset(8.0, 10.0)),
            Line(Offset(8.0, 10.0), Offset(8.0, -10.0)),
            Line(Offset(8.0, -10.0), Offset(-11.0, -10.0)),
            Line(Offset(-2.0, -10.0), Offset(-2.0, 10.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(8.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-2.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-2.0, -10.0),
                p2: Offset(8.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-11.0, -10.0),
                p2: Offset(-11.0, 10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(-11.0, 10.0),
              Offset(-11.0, -10.0),
              Offset(-2.0, -10.0),
              Offset(-2.0, 10.0),
              Offset(-11.0, 10.0)
            ]),
            Polygon(points: [
              Offset(-2.0, 10.0),
              Offset(8.0, 10.0),
              Offset(8.0, -10.0),
              Offset(-2.0, -10.0),
              Offset(-2.0, 10.0)
            ])
          ], openingTypes: [], fillingTypes: [], arches: [])),
      Template(
          id: 2,
          date: DateTime(2024),
          scheme: const Scheme(id: '1', lines: [
            Line(Offset(-7.0, 9.0), Offset(6.0, 9.0)),
            Line(Offset(6.0, 9.0), Offset(6.0, -10.0)),
            Line(Offset(6.0, -10.0), Offset(-7.0, -10.0)),
            Line(Offset(-7.0, -10.0), Offset(-7.0, 9.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-7.0, -10.0),
                p2: Offset(6.0, -10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-7.0, -10.0),
                p2: Offset(-7.0, 9.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1)
          ], polygons: [
            Polygon(points: [
              Offset(6.0, 9.0),
              Offset(-7.0, 9.0),
              Offset(-7.0, -10.0),
              Offset(6.0, -10.0),
              Offset(6.0, 9.0)
            ])
          ], openingTypes: [], fillingTypes: [], arches: [])),
    ].reversed.toList();
