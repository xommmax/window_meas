import 'dart:io';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/features/meas/data/model/measurement.dart';
import 'package:window_meas/features/meas/data/params/param_enum.dart';
import 'package:window_meas/features/meas/view/details/pdf/pdf_custom_painter.dart';
import 'package:window_meas/l10n/localization.dart';

class PdfGenerator {
  static Future<File> generate(Measurement measurement) async {
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
                        'Замір №${measurement.innerId?.toString().padLeft(4, '0') ?? ''}',
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
                padding: const pw.EdgeInsets.fromLTRB(30, 40, 20, 40),
                child: pw.Column(
                  children: [
                    _scheme(measurement, context),
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
        _infoRow(Localization.l10n.phoneNumber, ''),
        _infoRow(Localization.l10n.phoneNumberMain, measurement.phoneNumberMain, sub: true),
        _infoRow(Localization.l10n.phoneNumberAdditional, measurement.phoneNumberAdditional,
            sub: true),
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
        _infoRow(Localization.l10n.screedDisassembly, measurement.screedDisassembly, sub: true),
        _infoRow(Localization.l10n.gridDisassembly, measurement.gridDisassembly, sub: true),
        _infoRow(Localization.l10n.roofDisassembly, measurement.roofDisassembly, sub: true),
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
              padding: const pw.EdgeInsets.all(20),
              child: pw.CustomPaint(
                size: const PdfPoint(300, 300),
                painter: (canvas, size) =>
                    PdfCustomPainter(measurement.scheme!, context).paint(canvas, size),
              ),
            )
          : pw.SizedBox.shrink();

  static pw.Widget _photo(Measurement measurement) => pw.SizedBox.shrink();

  static List<pw.Widget> _positionInfo1(Measurement measurement) => [
        _infoTitle(Localization.l10n.position),
        _infoRow(Localization.l10n.quarter, ''),
        _infoRow(Localization.l10n.size, measurement.quarterSize, sub: true),
        _infoRow(Localization.l10n.quarterPosition, measurement.quarterPosition, sub: true),
        _infoRow(Localization.l10n.staticCalculation, measurement.staticCalculation),
        _infoRow(Localization.l10n.profileSystem, measurement.profileSystem),
        _infoRow(Localization.l10n.door, ''),
        _infoRow(Localization.l10n.doorOpeningType, measurement.doorOpeningType, sub: true),
        _infoRow(Localization.l10n.doorstep, measurement.doorstep, sub: true),
        _infoRow(Localization.l10n.doorstepType, measurement.doorstepType, sub: true),
        _infoRow(Localization.l10n.lamination, ''),
        _infoRow(Localization.l10n.laminationInternal, measurement.laminationInternal, sub: true),
        _infoRow(Localization.l10n.laminationExternal, measurement.laminationExternal, sub: true),
        _infoRow(Localization.l10n.rubberColor, measurement.rubberColor),
        _infoRow(Localization.l10n.standProfile, measurement.standProfile),
        _infoRow(Localization.l10n.expanders, ''),
        _infoRow(Localization.l10n.expanderRight, measurement.expanderOption.rightEnabled,
            sub: true),
        _infoRow(Localization.l10n.width, measurement.expanderOption.rightWidth, sub: true),
        _infoRow(Localization.l10n.length, measurement.expanderOption.rightLength, sub: true),
        _infoRow(Localization.l10n.quantity, measurement.expanderOption.rightAmount, sub: true),
        _infoRow(Localization.l10n.expanderLeft, measurement.expanderOption.leftEnabled, sub: true),
        _infoRow(Localization.l10n.width, measurement.expanderOption.leftWidth, sub: true),
        _infoRow(Localization.l10n.length, measurement.expanderOption.leftLength, sub: true),
        _infoRow(Localization.l10n.quantity, measurement.expanderOption.leftAmount, sub: true),
        _infoRow(Localization.l10n.expanderTop, measurement.expanderOption.topEnabled, sub: true),
        _infoRow(Localization.l10n.width, measurement.expanderOption.topWidth, sub: true),
        _infoRow(Localization.l10n.length, measurement.expanderOption.topLength, sub: true),
        _infoRow(Localization.l10n.quantity, measurement.expanderOption.topAmount, sub: true),
        _infoRow(Localization.l10n.expanderBottom, measurement.expanderOption.bottomEnabled,
            sub: true),
        _infoRow(Localization.l10n.width, measurement.expanderOption.bottomWidth, sub: true),
        _infoRow(Localization.l10n.length, measurement.expanderOption.bottomLength, sub: true),
        _infoRow(Localization.l10n.quantity, measurement.expanderOption.bottomAmount, sub: true),
      ];

  static List<pw.Widget> _positionInfo2(Measurement measurement) => [
        pw.SizedBox(height: 20),
        _infoRow(Localization.l10n.glassUnit, measurement.glassUnit),
        _infoRow(Localization.l10n.panel, ''),
        _infoRow(Localization.l10n.type, measurement.panelType, sub: true),
        _infoRow(Localization.l10n.thickness, measurement.panelThickness, sub: true),
        _infoRow(Localization.l10n.furniture, measurement.furniture),
        _infoRow(Localization.l10n.windowsill, ''),
        _infoRow(Localization.l10n.type, measurement.windowsillType, sub: true),
        _infoRow(Localization.l10n.depth, measurement.windowsillDepth, sub: true),
        _infoRow(Localization.l10n.size, measurement.windowsillSize, sub: true),
        _infoRow(Localization.l10n.windowsillConnector, measurement.windowsillConnector, sub: true),
        _infoRow(Localization.l10n.color, measurement.windowsillColor, sub: true),
        _infoRow(Localization.l10n.assembly, measurement.windowsillAssembly, sub: true),
        _infoRow(Localization.l10n.drainage, ''),
        _infoRow(Localization.l10n.depth, measurement.drainageDepth, sub: true),
        _infoRow(Localization.l10n.width, measurement.drainageWidth, sub: true),
        _infoRow(Localization.l10n.color, measurement.drainageColor, sub: true),
        _infoRow(Localization.l10n.drainageEndCap, measurement.drainageEndCap, sub: true),
        _infoRow(Localization.l10n.canopy, ''),
        _infoRow(Localization.l10n.type, measurement.canopyType, sub: true),
        _infoRow(Localization.l10n.size, measurement.canopySize, sub: true),
        _infoRow(Localization.l10n.color, measurement.canopyColor, sub: true),
        _infoRow(Localization.l10n.slope, measurement.slopeDepth),
        _infoRow(Localization.l10n.depth, measurement.slopeDepth, sub: true),
        _infoRow(Localization.l10n.length, measurement.slopeLength, sub: true),
        _infoRow(Localization.l10n.quantity, measurement.slopeQuantity, sub: true),
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

  static pw.Widget _infoRow<T>(String title, T value, {bool sub = false}) {
    final stringValue = switch (value) {
      String _ => value,
      bool _ => (value as bool) ? Localization.l10n.yes : Localization.l10n.no,
      ParamEnum _ => (value as ParamEnum).localizedName,
      DateTime _ => DateFormat('dd.MM.yyyy, HH:mm').format(value),
      _ => value.toString(),
    };

    return pw.Padding(
      padding: pw.EdgeInsets.fromLTRB(sub ? 15 : 0, 2, 0, 2),
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
