import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_meas/features/measurement/cubit/meas_details_cubit.dart';
import 'package:window_meas/features/measurement/data/domain/model/measurement.dart';
import 'package:window_meas/features/measurement/view/details/widgets/items/items.dart';
import 'package:signature/signature.dart';
import 'package:window_meas/l10n/localization.dart';

class SignatureItem extends StatefulWidget {
  const SignatureItem(this.measurement, {super.key});

  final Measurement measurement;

  @override
  State<SignatureItem> createState() => _SignatureItemState();
}

class _SignatureItemState extends State<SignatureItem> {
  late final SignatureController _controller;
  late final Widget _signatureCanvas;

  @override
  void initState() {
    super.initState();
    _controller = SignatureController(
      penStrokeWidth: 3,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
      onDrawEnd: () => _saveSignature(),
    );

    _signatureCanvas = Signature(
      controller: _controller,
      width: double.infinity,
      height: 200,
      backgroundColor: Colors.black.withOpacity(0.1),
    );
  }

  Future<void> _saveSignature() async {
    final signatureBytes = await _controller.toPngBytes();
    if (signatureBytes == null) return;

    final dir = await getTemporaryDirectory();
    final filePath =
        "${dir.path}/measurement-signatures/signature-${DateTime.now().millisecondsSinceEpoch}.png";
    final file = File(filePath);
    if (!file.existsSync()) {
      file.createSync(recursive: true);
      file.writeAsBytesSync(signatureBytes);
    }

    if (mounted) {
      context.read<MeasurementDetailsCubit>().updateMeasurement(
            widget.measurement.copyWith(signaturePath: file.path),
          );
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: TextItem(title: context.l10n.signature)),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.grey),
                onPressed: () {
                  _controller.clear();
                  context.read<MeasurementDetailsCubit>().updateMeasurement(
                        widget.measurement.copyWith(signaturePath: null),
                      );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: widget.measurement.signaturePath == null
                ? _signatureCanvas
                : Center(
                    child: Image.file(
                    File(widget.measurement.signaturePath!),
                    width: double.infinity,
                    height: 200,
                    // fit: BoxFit.cover,
                  )),
          ),
        ],
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
