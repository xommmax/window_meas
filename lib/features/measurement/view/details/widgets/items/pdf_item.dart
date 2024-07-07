import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:window_meas/l10n/localization.dart';

class PdfItem extends StatelessWidget {
  const PdfItem(
    this.pdfFile,
    this.remoteId, {
    super.key,
  });

  final String pdfFile;
  final String remoteId;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${context.l10n.pdfFile}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Center(
              child: InkWell(
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: FaIcon(
                    FontAwesomeIcons.solidFilePdf,
                    color: AppColors.primary,
                    size: 36,
                  ),
                ),
                onTap: () => _openPdf(context),
              ),
            ),
          ],
        ),
      );

  Future<void> _openPdf(BuildContext context) async {
    final ref = FirebaseStorage.instance.refFromURL(pdfFile);
    final dir = await getTemporaryDirectory();
    final filePath = "${dir.path}/measurement-pdfs/measurement-$remoteId.pdf";
    final file = File(filePath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      await ref.writeToFile(file);
    }

    OpenFile.open(file.path);
  }
}
