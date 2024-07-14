import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class FileUploader {
  FileUploader({
    required this.initialUrl,
    required this.maxPartSize,
    required this.authHeader,
  }) {
    uploadDio = Dio(BaseOptions(
      headers: {
        'Authorization': authHeader,
      },
    ));
  }

  final String initialUrl;
  final int maxPartSize;
  final String? authHeader;
  late final Dio uploadDio;

  Future<Response> uploadFile(File file) async {
    int totalSize = await file.length();
    int offset = 0;
    String currentUrl = initialUrl;
    Response? response;

    while (offset < totalSize) {
      int end = (offset + maxPartSize < totalSize) ? offset + maxPartSize : totalSize;
      List<int> partBytes = await file
          .openRead(offset, end)
          .toList()
          .then((value) => value.expand((x) => x).toList());
      offset = end;

      response = await uploadDio.post(
        currentUrl,
        data: Uint8List.fromList(partBytes),
        options: Options(
          headers: {
            'Content-Length': partBytes.length,
          },
        ),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        if (response.data['next_url'] == null) {
          if (response.data['uuid'] != null) {
            break;
          } else {
            throw Exception("Failed to upload part: ${response.statusCode}");
          }
        } else {
          currentUrl = response.data['next_url'];
        }
      } else {
        throw Exception("Failed to upload part: ${response.statusCode}");
      }
    }

    return response!;
  }
}
