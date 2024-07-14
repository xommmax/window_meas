import 'dart:io';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/data/domain/model/params/param_enum.dart';
import 'package:window_meas/features/measurement/pdf/pdf_custom_painter.dart';
import 'package:window_meas/l10n/localization.dart';

class PdfGenerator {
  static bool _showEmptyFields = false;

  static Future<File> generate(
    Measurement measurement, {
    bool? showEmptyFields,
  }) async {
    if (showEmptyFields != null) {
      _showEmptyFields = showEmptyFields;
    }

    final pdf = pw.Document(
      theme: pw.ThemeData.withFont(
        base: await PdfGoogleFonts.robotoRegular(),
        bold: await PdfGoogleFonts.robotoBold(),
        boldItalic: await PdfGoogleFonts.robotoBoldItalic(),
        italic: await PdfGoogleFonts.robotoItalic(),
      ),
    );

    final logo = await rootBundle.loadString('assets/white_logo.svg');

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Column(
          children: [
            _header(logo),
            pw.Expanded(
              child: pw.Padding(
                padding: const pw.EdgeInsets.fromLTRB(30, 40, 20, 40),
                child: pw.Column(
                  children: [
                    pw.Container(
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                        'Замір №${measurement.localId?.toString().padLeft(4, '0') ?? ''}',
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColor.fromInt(AppColors.primary.value),
                        ),
                      ),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _clientInfo(measurement),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _address(measurement),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 30),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _buildingInfo(measurement),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _otherWork(measurement),
                          ),
                        ),
                      ],
                    ),
                    pw.Expanded(
                      child: _footer(context.pageNumber),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Column(
          children: [
            _header(logo),
            pw.Expanded(
              child: pw.Padding(
                padding: const pw.EdgeInsets.fromLTRB(30, 40, 20, 40),
                child: pw.Column(
                  children: [
                    _infoTitle(Localization.l10n.position),
                    pw.SizedBox(height: 20),
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _positionInfo1(measurement),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: _positionInfo2(measurement),
                          ),
                        ),
                      ],
                    ),
                    pw.Expanded(
                      child: _footer(context.pageNumber),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Column(
          children: [
            _header(logo),
            pw.Expanded(
              child: pw.Padding(
                padding: const pw.EdgeInsets.fromLTRB(30, 20, 20, 40),
                child: pw.Column(
                  children: [
                    _infoTitle(Localization.l10n.schemeAndPhoto),
                    pw.SizedBox(height: 20),
                    _scheme(measurement, context),
                    pw.SizedBox(height: 30),
                    _photo(measurement),
                    pw.Expanded(
                      child: _footer(context.pageNumber),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    final output = await getTemporaryDirectory();
    final file = File('${output.path}/measurement_${measurement.id}.pdf');
    return await file.writeAsBytes(await pdf.save());
  }

  static pw.Widget _header(String logo) => pw.Container(
        padding: const pw.EdgeInsets.fromLTRB(30, 20, 20, 20),
        color: PdfColor.fromInt(AppColors.primary.value),
        child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.SvgImage(svg: logo, width: 150),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text(
                  'Компанія "Еверест"',
                  style: const pw.TextStyle(color: PdfColors.white, fontSize: 8),
                ),
                pw.Text(
                  'тел: +380 (67) 380 73 18',
                  style: const pw.TextStyle(color: PdfColors.white, fontSize: 8),
                ),
                pw.Text(
                  'https://everest-vikna.com.ua',
                  style: const pw.TextStyle(color: PdfColors.white, fontSize: 8),
                ),
              ],
            ),
          ],
        ),
      );

  static pw.Widget _footer(int pageNumber) => pw.Container(
        alignment: pw.Alignment.bottomRight,
        child: pw.Text(
          'Сторінка $pageNumber',
          style: const pw.TextStyle(
            fontSize: 10,
            color: PdfColors.grey,
          ),
        ),
      );

  static List<pw.Widget> _clientInfo(Measurement measurement) => [
        _infoTitle(Localization.l10n.clientInfo),
        _infoRow(Localization.l10n.clientName, measurement.clientName),
        _infoRow(Localization.l10n.cost, measurement.cost),
        _infoRow(Localization.l10n.prepayment, measurement.prepayment),
        _infoRow(Localization.l10n.phoneNumber, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.phoneNumberMain, measurement.phoneNumberMain,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.phoneNumberAdditional, measurement.phoneNumberAdditional,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.howDiscovered, measurement.howDiscovered),
        _infoRow(Localization.l10n.measurementDate, measurement.date),
        _infoRow(Localization.l10n.measurer, measurement.measurer),
        _infoRow(Localization.l10n.comment, measurement.comment),
      ];

  static List<pw.Widget> _address(Measurement measurement) => [
        _infoTitle(Localization.l10n.address),
        _infoRow(Localization.l10n.city, measurement.city),
        _infoRow(Localization.l10n.district, measurement.district),
        _infoRow(Localization.l10n.street, measurement.street),
        _infoRow(Localization.l10n.building, measurement.building),
        _infoRow(Localization.l10n.residentialComplex, measurement.residentialComplex),
        _infoRow(Localization.l10n.block, measurement.block),
        _infoRow(Localization.l10n.entrance, measurement.entrance),
        _infoRow(Localization.l10n.doorphone, measurement.doorphone),
        _infoRow(Localization.l10n.floor, measurement.floor),
        _infoRow(Localization.l10n.apartment, measurement.apartment),
        _infoRow(Localization.l10n.housingCoopNumber, measurement.housingCoopNumber),
      ];

  static List<pw.Widget> _buildingInfo(Measurement measurement) => [
        _infoTitle(Localization.l10n.buildingInfo),
        _infoRow(Localization.l10n.buildingType, measurement.buildingType),
        _infoRow(Localization.l10n.flatStatus, measurement.flatStatus),
        _infoRow(Localization.l10n.elevator, measurement.elevator),
        _infoRow(Localization.l10n.assembly, measurement.assembly),
        _infoRow(Localization.l10n.disassembly, measurement.disassembly),
        _infoRow(Localization.l10n.screedDisassembly, measurement.screedDisassembly,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.gridDisassembly, measurement.gridDisassembly,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.roofDisassembly, measurement.roofDisassembly,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.delivery, measurement.delivery),
        _infoRow(Localization.l10n.unloading, measurement.unloading),
        _infoRow(Localization.l10n.garbageRemoval, measurement.garbageRemoval),
        _infoRow(Localization.l10n.sealing, measurement.sealing),
        _infoRow(Localization.l10n.vacuumCleaner, measurement.vacuumCleaner),
        _infoRow(Localization.l10n.estimatedAssemblyTime, measurement.estimatedAssemblyTime),
      ];

  static List<pw.Widget> _otherWork(Measurement measurement) => [
        _infoTitle(Localization.l10n.otherWork),
        _infoRow(Localization.l10n.parapetReinforcement, measurement.parapetReinforcement),
        _infoRow(Localization.l10n.windowsillExtension, measurement.windowsillExtension),
        _infoRow(Localization.l10n.slabExtension, measurement.slabExtension),
        _infoRow(Localization.l10n.extensionSheathing, measurement.extensionSheathing),
        _infoRow(Localization.l10n.insulation, measurement.insulation),
      ];

  static pw.Widget _scheme(Measurement measurement, pw.Context context) =>
      (measurement.scheme != null)
          ? pw.Padding(
              padding: const pw.EdgeInsets.all(60),
              child: pw.CustomPaint(
                size: const PdfPoint(250, 250),
                painter: (canvas, size) =>
                    PdfCustomPainter(measurement.scheme!, context).paint(canvas, size),
              ),
            )
          : pw.SizedBox.shrink();

  static pw.Widget _photo(Measurement measurement) =>
      (measurement.photoPath != null && File(measurement.photoPath!).existsSync())
          ? pw.Image(
              pw.MemoryImage(File(measurement.photoPath!).readAsBytesSync()),
              height: 250,
              width: 250,
            )
          : pw.SizedBox.shrink();

  static List<pw.Widget> _positionInfo1(Measurement measurement) => [
        _infoRow(Localization.l10n.quarter, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.size, measurement.quarterSize, rowType: _RowType.sub),
        _infoRow(Localization.l10n.quarterPosition, measurement.quarterPosition,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.staticCalculation, measurement.staticCalculation),
        _infoRow(Localization.l10n.profileSystem, measurement.profileSystem),
        _infoRow(Localization.l10n.door, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.doorOpeningType, measurement.doorOpeningType,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.doorstep, measurement.doorstep, rowType: _RowType.sub),
        _infoRow(Localization.l10n.doorstepType, measurement.doorstepType, rowType: _RowType.sub),
        _infoRow(Localization.l10n.lamination, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.laminationInternal, measurement.laminationInternal,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.laminationExternal, measurement.laminationExternal,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.rubberColor, measurement.rubberColor),
        _infoRow(Localization.l10n.standProfile, measurement.standProfile),
        _infoRow(Localization.l10n.expanders, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.expanderRight, measurement.expanderOption.rightEnabled,
            rowType: _RowType.sub),
        if (measurement.expanderOption.rightEnabled) ...[
          _infoRow(Localization.l10n.width, measurement.expanderOption.rightWidth,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.length, measurement.expanderOption.rightLength,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.quantity, measurement.expanderOption.rightAmount,
              rowType: _RowType.subSub),
        ],
        _infoRow(Localization.l10n.expanderLeft, measurement.expanderOption.leftEnabled,
            rowType: _RowType.sub),
        if (measurement.expanderOption.leftEnabled) ...[
          _infoRow(Localization.l10n.width, measurement.expanderOption.leftWidth,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.length, measurement.expanderOption.leftLength,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.quantity, measurement.expanderOption.leftAmount,
              rowType: _RowType.subSub),
        ],
        _infoRow(Localization.l10n.expanderTop, measurement.expanderOption.topEnabled,
            rowType: _RowType.sub),
        if (measurement.expanderOption.topEnabled) ...[
          _infoRow(Localization.l10n.width, measurement.expanderOption.topWidth,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.length, measurement.expanderOption.topLength,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.quantity, measurement.expanderOption.topAmount,
              rowType: _RowType.subSub),
        ],
        _infoRow(Localization.l10n.expanderBottom, measurement.expanderOption.bottomEnabled,
            rowType: _RowType.sub),
        if (measurement.expanderOption.bottomEnabled) ...[
          _infoRow(Localization.l10n.width, measurement.expanderOption.bottomWidth,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.length, measurement.expanderOption.bottomLength,
              rowType: _RowType.subSub),
          _infoRow(Localization.l10n.quantity, measurement.expanderOption.bottomAmount,
              rowType: _RowType.subSub),
        ],
      ];

  static List<pw.Widget> _positionInfo2(Measurement measurement) => [
        _infoRow(Localization.l10n.glassUnit, measurement.glassUnit),
        _infoRow(Localization.l10n.panel, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.type, measurement.panelType, rowType: _RowType.sub),
        _infoRow(Localization.l10n.thickness, measurement.panelThickness, rowType: _RowType.sub),
        _infoRow(Localization.l10n.furniture, measurement.furniture),
        _infoRow(Localization.l10n.windowsill, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.type, measurement.windowsillType, rowType: _RowType.sub),
        _infoRow(Localization.l10n.depth, measurement.windowsillDepth, rowType: _RowType.sub),
        _infoRow(Localization.l10n.size, measurement.windowsillSize, rowType: _RowType.sub),
        _infoRow(Localization.l10n.windowsillConnector, measurement.windowsillConnector,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.color, measurement.windowsillColor, rowType: _RowType.sub),
        _infoRow(Localization.l10n.assembly, measurement.windowsillAssembly, rowType: _RowType.sub),
        _infoRow(Localization.l10n.drainage, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.depth, measurement.drainageDepth, rowType: _RowType.sub),
        _infoRow(Localization.l10n.width, measurement.drainageWidth, rowType: _RowType.sub),
        _infoRow(Localization.l10n.color, measurement.drainageColor, rowType: _RowType.sub),
        _infoRow(Localization.l10n.drainageEndCap, measurement.drainageEndCap,
            rowType: _RowType.sub),
        _infoRow(Localization.l10n.canopy, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.type, measurement.canopyType, rowType: _RowType.sub),
        _infoRow(Localization.l10n.size, measurement.canopySize, rowType: _RowType.sub),
        _infoRow(Localization.l10n.color, measurement.canopyColor, rowType: _RowType.sub),
        _infoRow(Localization.l10n.slope, null, rowType: _RowType.title),
        _infoRow(Localization.l10n.depth, measurement.slopeDepth, rowType: _RowType.sub),
        _infoRow(Localization.l10n.length, measurement.slopeLength, rowType: _RowType.sub),
        _infoRow(Localization.l10n.quantity, measurement.slopeQuantity, rowType: _RowType.sub),
      ];

  static pw.Widget _infoTitle(String title) => pw.Padding(
        padding: const pw.EdgeInsets.only(bottom: 6),
        child: pw.Text(
          title,
          style: pw.TextStyle(
            fontSize: 12,
            fontWeight: pw.FontWeight.bold,
            color: PdfColor.fromInt(AppColors.primary.value),
          ),
        ),
      );

  static pw.Widget _infoRow<T>(
    String title,
    T value, {
    _RowType? rowType,
  }) {
    final stringValue = switch (value) {
      String _ => value,
      bool b => b ? Localization.l10n.yes : Localization.l10n.no,
      ParamEnum e => e.localizedName,
      DateTime d => DateFormat('dd.MM.yyyy, HH:mm').format(d),
      _ => value.toString(),
    };

    final isValueEmpty = switch (value) {
      String s => s.isEmpty,
      bool b => !b,
      ParamEnum e => e.name == 'none',
      _ => value == null,
    };

    if (isValueEmpty && !_showEmptyFields && (rowType != _RowType.title)) {
      return pw.SizedBox.shrink();
    }

    final leftPadding = rowType == _RowType.subSub
        ? 30.0
        : rowType == _RowType.sub
            ? 15.0
            : 0.0;

    return pw.Padding(
      padding: pw.EdgeInsets.fromLTRB(leftPadding, 2, 0, 2),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            '$title: ',
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.normal,
              color: PdfColors.black,
            ),
          ),
          if (rowType != _RowType.title)
            pw.Expanded(
              child: pw.Text(
                stringValue,
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.black,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

enum _RowType {
  title,
  sub,
  subSub,
}
