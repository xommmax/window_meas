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
import 'package:window_meas/features/templates/view/template_list_screen.dart';

List<Template> getDefaultSchemeTemplates() => [
      Template(
          type: TemplateType.scheme,
          id: '104e9ba1-d143-47b3-81e2-eadf4bd607ae',
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
          type: TemplateType.scheme,
          id: '04d213a7-3cb8-4d0b-b3a0-3d0ce4d7ef88',
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
          type: TemplateType.scheme,
          id: 'ca931255-4ec7-4903-9877-3108b41ffec5',
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
          type: TemplateType.scheme,
          id: 'd7c1c654-128b-4764-b4bb-7d4d00b36117',
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
          type: TemplateType.scheme,
          id: 'b4334570-1635-4ecd-8afc-f5f8364bf69e',
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
          type: TemplateType.scheme,
          id: 'd182f0a8-c13a-4867-9e07-6620f969b288',
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
          type: TemplateType.scheme,
          id: '6a531ea5-0413-42af-aad7-244cb4740411',
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
          type: TemplateType.scheme,
          id: 'ae4c8215-22ac-41e0-a676-97b6dc43d293',
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
          type: TemplateType.scheme,
          id: 'ed693083-f022-4119-96f3-de5b0927c3d0',
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
          type: TemplateType.scheme,
          id: '7e5a057e-199e-4bc5-b279-44ac4a9946e1',
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
          type: TemplateType.scheme,
          id: '2b79438d-7aff-4a63-a315-52e190f1be94',
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
          type: TemplateType.scheme,
          id: '161cd0e5-0a3c-4ec4-9a3e-abf606cb18d0',
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
          type: TemplateType.scheme,
          id: '2023ed21-923b-4c77-b604-688faf567c5d',
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
          type: TemplateType.scheme,
          id: 'b2cda686-64cd-47a0-8cb4-3e4d27ef1396',
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
          type: TemplateType.scheme,
          id: '397d4c35-b2d5-486d-9601-5dc0b1b37082',
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
          type: TemplateType.scheme,
          id: 'a2b56472-e866-43e7-ba32-08f657e136e9',
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
          type: TemplateType.scheme,
          id: '8986602e-fb62-4127-94be-05307533ab7f',
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

List<Template> getDefaultFlexiblesTemplates() => [
      Template(
          id: '043b8cc4-334a-47a9-b4a9-cbeb3d2e8bc6',
          date: DateTime(2024),
          scheme: const Scheme(id: '3d4cad51-f6d3-4aac-b20c-7132db852701', lines: [
            Line(Offset(-11.0, -3.0), Offset(-4.0, -3.0)),
            Line(Offset(-4.0, -3.0), Offset(-4.0, -8.0)),
            Line(Offset(-4.0, -8.0), Offset(6.0, -8.0)),
            Line(Offset(6.0, -8.0), Offset(6.0, -3.0)),
            Line(Offset(6.0, -3.0), Offset(13.0, -3.0)),
            Line(Offset(-11.0, -3.0), Offset(-11.0, -2.0)),
            Line(Offset(-11.0, -2.0), Offset(-9.0, -2.0)),
            Line(Offset(13.0, -3.0), Offset(13.0, -2.0)),
            Line(Offset(13.0, -2.0), Offset(11.0, -2.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -8.0),
                p2: Offset(13.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-9.0, -8.0),
                p2: Offset(-4.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-4.0, -8.0),
                p2: Offset(6.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(6.0, -8.0),
                p2: Offset(11.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 3),
            SizeSegment(
                p1: Offset(-11.0, -8.0),
                p2: Offset(-11.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -8.0),
                p2: Offset(-11.0, -3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -3.0),
                p2: Offset(-11.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-11.0, -8.0),
                p2: Offset(-9.0, -8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(11.0, -8.0),
                p2: Offset(13.0, -8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 4)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '5eec1196-4cb6-4bf0-9ca1-e25791767099',
          date: DateTime(2024),
          scheme: const Scheme(id: '909d0430-ad23-4428-8f6d-aaa06c36c7bc', lines: [
            Line(Offset(-11.0, -6.0), Offset(-2.0, -6.0)),
            Line(Offset(-2.0, -6.0), Offset(-2.0, -1.0)),
            Line(Offset(-2.0, -1.0), Offset(8.0, -1.0)),
            Line(Offset(8.0, -1.0), Offset(10.0, 3.0)),
            Line(Offset(10.0, 3.0), Offset(9.0, 3.0)),
            Line(Offset(9.0, 3.0), Offset(8.0, 1.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(10.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-2.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-2.0, -6.0),
                p2: Offset(8.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(8.0, -6.0),
                p2: Offset(9.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(9.0, -6.0),
                p2: Offset(10.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 3),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-11.0, 3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-11.0, -1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -1.0),
                p2: Offset(-11.0, 1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-11.0, 1.0),
                p2: Offset(-11.0, 3.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '0db23e19-90c2-4236-a806-897383e807a6',
          date: DateTime(2024),
          scheme: const Scheme(id: '049cbb36-3c82-4468-b504-8c7f775dcff3', lines: [
            Line(Offset(-11.0, -7.0), Offset(-1.0, -7.0)),
            Line(Offset(-1.0, -7.0), Offset(-1.0, -2.0)),
            Line(Offset(-1.0, -2.0), Offset(12.0, -2.0)),
            Line(Offset(11.0, 1.0), Offset(11.0, 4.0)),
            Line(Offset(11.0, 4.0), Offset(12.0, 4.0)),
            Line(Offset(12.0, -2.0), Offset(12.0, 4.0)),
            Line(Offset(-11.0, -7.0), Offset(-11.0, -6.0)),
            Line(Offset(-11.0, -6.0), Offset(-8.0, -6.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -7.0),
                p2: Offset(12.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-8.0, -7.0),
                p2: Offset(-1.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-1.0, -7.0),
                p2: Offset(11.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(11.0, -7.0),
                p2: Offset(12.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 3),
            SizeSegment(
                p1: Offset(-11.0, -7.0),
                p2: Offset(-11.0, 4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -7.0),
                p2: Offset(-11.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-11.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-11.0, -2.0),
                p2: Offset(-11.0, 1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-11.0, -7.0),
                p2: Offset(-8.0, -7.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, 1.0),
                p2: Offset(-11.0, 4.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 3)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '6e9adc72-278a-4803-9418-67c36a494cc0',
          date: DateTime(2024),
          scheme: const Scheme(id: '3377fb46-af05-4750-949a-0c2777632e3d', lines: [
            Line(Offset(-12.0, -8.0), Offset(-12.0, 1.0)),
            Line(Offset(-12.0, 1.0), Offset(9.0, 1.0)),
            Line(Offset(9.0, 1.0), Offset(9.0, 8.0)),
            Line(Offset(9.0, 8.0), Offset(10.0, 8.0)),
            Line(Offset(10.0, 8.0), Offset(10.0, 5.0)),
            Line(Offset(-12.0, -8.0), Offset(-11.0, -8.0)),
            Line(Offset(-11.0, -8.0), Offset(-11.0, -5.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(10.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-11.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -8.0),
                p2: Offset(9.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(9.0, -8.0),
                p2: Offset(10.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-12.0, 8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -5.0),
                p2: Offset(-12.0, 1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, 1.0),
                p2: Offset(-12.0, 5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-12.0, -5.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 5.0),
                p2: Offset(-12.0, 8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 3)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '829b40fb-94a7-4cfd-a9fd-7b3a6289b0be',
          date: DateTime(2024),
          scheme: const Scheme(id: 'cc97113b-b548-430d-b33d-d5ea9215f760', lines: [
            Line(Offset(-12.0, -7.0), Offset(-12.0, -3.0)),
            Line(Offset(-12.0, -3.0), Offset(7.0, -3.0)),
            Line(Offset(7.0, -3.0), Offset(7.0, 2.0)),
            Line(Offset(7.0, 2.0), Offset(6.0, 2.0)),
            Line(Offset(6.0, 2.0), Offset(6.0, 0.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -7.0),
                p2: Offset(7.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -7.0),
                p2: Offset(6.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(6.0, -7.0),
                p2: Offset(7.0, -7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -7.0),
                p2: Offset(-12.0, 2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -7.0),
                p2: Offset(-12.0, -3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, -3.0),
                p2: Offset(-12.0, 0.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, 0.0),
                p2: Offset(-12.0, 2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '7086d1dc-528a-450d-8fa3-e22905173148',
          date: DateTime(2024),
          scheme: const Scheme(id: 'cd91ac43-ea6a-45e1-854e-ab271f4c167c', lines: [
            Line(Offset(-12.0, -8.0), Offset(-12.0, -4.0)),
            Line(Offset(-12.0, -4.0), Offset(-4.0, -4.0)),
            Line(Offset(-4.0, -4.0), Offset(7.0, 1.0)),
            Line(Offset(7.0, 1.0), Offset(5.0, 3.0)),
            Line(Offset(5.0, 3.0), Offset(7.0, 5.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(7.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-4.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-4.0, -8.0),
                p2: Offset(5.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-12.0, 5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -8.0),
                p2: Offset(-12.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, -4.0),
                p2: Offset(-12.0, 1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(5.0, -8.0),
                p2: Offset(7.0, -8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, 1.0),
                p2: Offset(-12.0, 3.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, 3.0),
                p2: Offset(-12.0, 5.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 3)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '2365e364-e8e1-4c4f-b87f-bc9f6fba16db',
          date: DateTime(2024),
          scheme: const Scheme(id: '4b1da624-a577-43df-adef-536d27e166d6', lines: [
            Line(Offset(-12.0, -6.0), Offset(-7.0, -6.0)),
            Line(Offset(-7.0, -6.0), Offset(-7.0, -1.0)),
            Line(Offset(-7.0, -1.0), Offset(8.0, 4.0)),
            Line(Offset(8.0, 4.0), Offset(6.0, 6.0)),
            Line(Offset(6.0, 6.0), Offset(8.0, 8.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(8.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(-7.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-7.0, -6.0),
                p2: Offset(6.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(-12.0, 8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(-12.0, -1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, -1.0),
                p2: Offset(-12.0, 4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(6.0, -6.0),
                p2: Offset(8.0, -6.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, 4.0),
                p2: Offset(-12.0, 6.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, 6.0),
                p2: Offset(-12.0, 8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 3)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '99dc438b-f640-49dd-97e1-608468988ba4',
          date: DateTime(2024),
          scheme: const Scheme(id: '366ad65d-7e85-4b66-aa3d-c3365b67512b', lines: [
            Line(Offset(-12.0, -4.0), Offset(-1.0, -4.0)),
            Line(Offset(-1.0, -4.0), Offset(8.0, -1.0)),
            Line(Offset(8.0, -1.0), Offset(10.0, 3.0)),
            Line(Offset(10.0, 3.0), Offset(9.0, 3.0)),
            Line(Offset(9.0, 3.0), Offset(8.0, 1.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -4.0),
                p2: Offset(10.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -4.0),
                p2: Offset(-1.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-1.0, -4.0),
                p2: Offset(8.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(8.0, -4.0),
                p2: Offset(9.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(9.0, -4.0),
                p2: Offset(10.0, -4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 3),
            SizeSegment(
                p1: Offset(-12.0, -4.0),
                p2: Offset(-12.0, 3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -4.0),
                p2: Offset(-12.0, -1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 1.0),
                p2: Offset(-12.0, 3.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -1.0),
                p2: Offset(-12.0, 1.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '4f70f8db-e212-4ed2-9deb-ff8c6eec8c42',
          date: DateTime(2024),
          scheme: const Scheme(id: '01a88393-fea0-49f3-91de-732e314c175a', lines: [
            Line(Offset(-12.0, -5.0), Offset(-2.0, -5.0)),
            Line(Offset(-2.0, -5.0), Offset(9.0, 0.0)),
            Line(Offset(9.0, 0.0), Offset(7.0, 2.0)),
            Line(Offset(7.0, 2.0), Offset(9.0, 4.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -5.0),
                p2: Offset(-2.0, -5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-2.0, -5.0),
                p2: Offset(7.0, -5.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -5.0),
                p2: Offset(-12.0, 4.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(7.0, -5.0),
                p2: Offset(9.0, -5.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, 2.0),
                p2: Offset(-12.0, 4.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -5.0),
                p2: Offset(-12.0, 0.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-12.0, 0.0),
                p2: Offset(-12.0, 2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -5.0),
                p2: Offset(9.0, -5.0),
                size: null,
                comment: 'КОЛІР',
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: 'd6b0b67f-e522-4df2-96d8-420c4d64f1ab',
          date: DateTime(2024),
          scheme: const Scheme(id: '553a42e4-35ff-4433-9fed-447b35ffd3ac', lines: [
            Line(Offset(-8.0, -9.0), Offset(-8.0, 8.0)),
            Line(Offset(-8.0, 8.0), Offset(9.0, 8.0)),
            Line(Offset(-8.0, -9.0), Offset(-7.0, -9.0)),
            Line(Offset(-7.0, -9.0), Offset(-7.0, -6.0)),
            Line(Offset(9.0, 8.0), Offset(9.0, 7.0)),
            Line(Offset(9.0, 7.0), Offset(6.0, 7.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-8.0, -9.0),
                p2: Offset(9.0, -9.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-8.0, -9.0),
                p2: Offset(-7.0, -9.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-7.0, -9.0),
                p2: Offset(6.0, -9.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-8.0, -9.0),
                p2: Offset(-8.0, 8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-8.0, -6.0),
                p2: Offset(-8.0, 7.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-8.0, 7.0),
                p2: Offset(-8.0, 8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-8.0, -9.0),
                p2: Offset(-8.0, -6.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(6.0, -9.0),
                p2: Offset(9.0, -9.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '50cc0d9c-432d-4574-84e9-0b965e97958a',
          date: DateTime(2024),
          scheme: const Scheme(id: '406f7b03-90db-4dae-8d40-f4560ab1de5f', lines: [
            Line(Offset(-9.0, -8.0), Offset(-9.0, 9.0)),
            Line(Offset(-9.0, 9.0), Offset(9.0, 9.0)),
            Line(Offset(9.0, 9.0), Offset(9.0, 10.0)),
            Line(Offset(9.0, 10.0), Offset(6.0, 10.0)),
            Line(Offset(-9.0, -8.0), Offset(-10.0, -8.0)),
            Line(Offset(-10.0, -8.0), Offset(-10.0, -5.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-10.0, -8.0),
                p2: Offset(9.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -8.0),
                p2: Offset(-9.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-9.0, -8.0),
                p2: Offset(6.0, -8.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-10.0, -8.0),
                p2: Offset(-10.0, 10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-10.0, -5.0),
                p2: Offset(-10.0, 9.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-10.0, 9.0),
                p2: Offset(-10.0, 10.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-10.0, -8.0),
                p2: Offset(-10.0, -5.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(6.0, -8.0),
                p2: Offset(9.0, -8.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '5c8dda84-539c-499b-8963-daac1e4e9caf',
          date: DateTime(2024),
          scheme: const Scheme(id: '27ae2b13-372b-4600-ade1-a7012ecfc5b5', lines: [
            Line(Offset(-12.0, -6.0), Offset(-12.0, -2.0)),
            Line(Offset(-12.0, -2.0), Offset(10.0, -2.0)),
            Line(Offset(10.0, -2.0), Offset(8.0, 0.0)),
            Line(Offset(8.0, 0.0), Offset(10.0, 2.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(10.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(-12.0, 2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(-12.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(8.0, -6.0),
                p2: Offset(10.0, -6.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, -2.0),
                p2: Offset(-12.0, 0.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-12.0, 0.0),
                p2: Offset(-12.0, 2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-12.0, -6.0),
                p2: Offset(8.0, -6.0),
                size: null,
                comment: 'КОЛІР',
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: 'bc459c8e-132b-4fc5-bab0-4637cc00e338',
          date: DateTime(2024),
          scheme: const Scheme(id: '2c9aa180-3101-41cc-95b4-0599e4c982ee', lines: [
            Line(Offset(-11.0, -2.0), Offset(11.0, -2.0)),
            Line(Offset(-11.0, -2.0), Offset(-11.0, -1.0)),
            Line(Offset(-11.0, -1.0), Offset(-8.0, -1.0)),
            Line(Offset(11.0, -2.0), Offset(11.0, -1.0)),
            Line(Offset(11.0, -1.0), Offset(8.0, -1.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -2.0),
                p2: Offset(11.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-8.0, -2.0),
                p2: Offset(8.0, -2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(-11.0, -2.0),
                p2: Offset(-11.0, -1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -2.0),
                p2: Offset(-8.0, -2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(8.0, -2.0),
                p2: Offset(11.0, -2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 2)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: '4c0b0336-6736-43d7-a356-87184320d80b',
          date: DateTime(2024),
          scheme: const Scheme(id: 'b562cf0f-501e-49be-b2fc-538dbf55e9d3', lines: [
            Line(Offset(-11.0, -3.0), Offset(11.0, -3.0)),
            Line(Offset(11.0, -3.0), Offset(9.0, -1.0)),
            Line(Offset(9.0, -1.0), Offset(11.0, 1.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -3.0),
                p2: Offset(11.0, -3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -3.0),
                p2: Offset(9.0, -3.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -3.0),
                p2: Offset(-11.0, 1.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -3.0),
                p2: Offset(-11.0, -1.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -1.0),
                p2: Offset(-11.0, 1.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(9.0, -3.0),
                p2: Offset(11.0, -3.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
      Template(
          id: 'bd45b41e-e019-4889-9acf-6e0784a2c6e7',
          date: DateTime(2024),
          scheme: const Scheme(id: 'f36ae512-56ce-4d41-82d2-2fcf2ed493a9', lines: [
            Line(Offset(-11.0, -6.0), Offset(-11.0, -2.0)),
            Line(Offset(-11.0, -2.0), Offset(9.0, -2.0)),
            Line(Offset(9.0, -2.0), Offset(7.0, 0.0)),
            Line(Offset(7.0, 0.0), Offset(9.0, 2.0))
          ], sizeSegments: [
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(9.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(7.0, -6.0),
                size: null,
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-11.0, 2.0),
                size: null,
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: true,
                index: -1),
            SizeSegment(
                p1: Offset(-11.0, -6.0),
                p2: Offset(-11.0, -2.0),
                size: '20',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 0),
            SizeSegment(
                p1: Offset(-11.0, 0.0),
                p2: Offset(-11.0, 2.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 2),
            SizeSegment(
                p1: Offset(-11.0, -2.0),
                p2: Offset(-11.0, 0.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.vertical,
                isMain: false,
                index: 1),
            SizeSegment(
                p1: Offset(7.0, -6.0),
                p2: Offset(9.0, -6.0),
                size: '10',
                comment: null,
                direction: SegmentDirection.horizontal,
                isMain: false,
                index: 1)
          ], polygons: [], openingTypes: [], fillingTypes: [], arches: []),
          type: TemplateType.flexibles),
    ].reversed.toList();
