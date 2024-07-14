import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:window_meas/features/measurement/data/remote/ds/file_uploader.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_dto.dart';

abstract class MeasurementRemoteDataSource {
  Future<void> updateWithSettings({
    required String? subdomain,
    required String? token,
    required int? listId,
  });

  Future<int> addMeasurement(MeasurementDTO measurement);

  Future<void> updateMeasurement(MeasurementDTO measurement);

  Future<List<MeasurementDTO>> getMeasurements();

  Future<void> uploadPdfFile(File file);
}

@Singleton(as: MeasurementRemoteDataSource)
class MeasurementRemoteDataSourceImpl implements MeasurementRemoteDataSource {
  MeasurementRemoteDataSourceImpl();

  Dio? kommoDio;
  int? kommoListId;

  @override
  Future<void> updateWithSettings({
    required String? subdomain,
    required String? token,
    required int? listId,
  }) async {
    if (kommoDio != null &&
        kommoDio!.options.baseUrl == 'https://$subdomain.kommo.com/api/v4/' &&
        kommoDio!.options.headers['Authorization'] == 'Bearer $token' &&
        kommoListId == listId) {
      return;
    }
    kommoDio = Dio(BaseOptions(
      baseUrl: 'https://$subdomain.kommo.com/api/v4/',
      headers: {
        'Authorization': 'Bearer $token',
      },
    ));
    kommoListId = listId;
  }

  @override
  Future<int> addMeasurement(MeasurementDTO measurement) async {
    try {
      final json = measurement.toJson();
      final response = await kommoDio?.post('catalogs/$kommoListId/elements', data: [json]);
      final measurementJson =
          (response?.data['_embedded']['elements'] as List).cast<Map<String, dynamic>>().first;
      return measurementJson['id'];
    } on DioException catch (e) {
      debugPrint('@@@ addMeasurement Error: $e');
      rethrow;
    }
  }

  @override
  Future<void> updateMeasurement(MeasurementDTO measurement) async {
    try {
      final json = measurement.toJson();
      await kommoDio?.patch('catalogs/$kommoListId/elements', data: [json]);
    } on DioException catch (e) {
      debugPrint('@@@ updateMeasurement Error: $e');
      rethrow;
    }
  }

  @override
  Future<List<MeasurementDTO>> getMeasurements() async {
    try {
      final response = await kommoDio?.get('catalogs/$kommoListId/elements');
      final measurementsJson =
          (response?.data['_embedded']['elements'] as List).cast<Map<String, dynamic>>();
      return measurementsJson.map((e) => MeasurementDTO.fromJson(e)).toList();
    } on DioException catch (e) {
      debugPrint('@@@ getMeasurements Error: $e');
      rethrow;
    }
  }

  @override
  Future<void> uploadPdfFile(File file) async {
    try {
      // Create upload session
      final authHeader = kommoDio?.options.headers['Authorization'];
      final sessionDio = Dio(
        BaseOptions(
          baseUrl: 'https://drive-c.kommo.com/v1.0/',
          headers: {'Authorization': authHeader},
        ),
      );

      final fileName = basename(file.path);

      final sessionResponse = await sessionDio.post('sessions', data: {
        'file_name': fileName,
        'file_size': file.lengthSync(),
      });

      // Upload file
      final fileUploader = FileUploader(
        initialUrl: sessionResponse.data['upload_url'],
        maxPartSize: sessionResponse.data['max_part_size'],
        authHeader: authHeader,
      );

      final uploadResponse = await fileUploader.uploadFile(file);

      debugPrint('@@@ Successfully uploaded pdf file: $uploadResponse');
    } catch (e) {
      debugPrint('@@@ uploadPdfFile Error: $e');
    }
  }
}
