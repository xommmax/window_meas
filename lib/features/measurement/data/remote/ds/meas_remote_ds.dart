import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/common/env.dart';
import 'package:window_meas/features/measurement/data/remote/model/measurement_dto.dart';

abstract class MeasurementRemoteDataSource {
  Future<int> addMeasurement(MeasurementDTO measurement);

  Future<void> updateMeasurement(MeasurementDTO measurement);

  Future<List<MeasurementDTO>> getMeasurements();
}

@Singleton(as: MeasurementRemoteDataSource)
class MeasurementRemoteDataSourceImpl implements MeasurementRemoteDataSource {
  const MeasurementRemoteDataSourceImpl();

  @override
  Future<int> addMeasurement(MeasurementDTO measurement) async {
    try {
      final json = measurement.toJson();
      final response = await kommoDio.post('catalogs/$kommoListId/elements', data: [json]);
      final measurementJson =
          (response.data['_embedded']['elements'] as List).cast<Map<String, dynamic>>().first;
      return measurementJson['id'];
    } on DioException catch (e) {
      debugPrint('@@@ Error: $e');
      rethrow;
    }
  }

  @override
  Future<void> updateMeasurement(MeasurementDTO measurement) async {
    try {
      final json = measurement.toJson();
      await kommoDio.patch('catalogs/$kommoListId/elements', data: [json]);
    } on DioException catch (e) {
      debugPrint('@@@ Error: $e');
      rethrow;
    }
  }

  @override
  Future<List<MeasurementDTO>> getMeasurements() async {
    try {
      final response = await kommoDio.get('catalogs/$kommoListId/elements');
      final measurementsJson =
          (response.data['_embedded']['elements'] as List).cast<Map<String, dynamic>>();
      return measurementsJson.map((e) => MeasurementDTO.fromJson(e)).toList();
    } on DioException catch (e) {
      debugPrint('@@@ Error: $e');
      rethrow;
    }
  }
}

final kommoDio = Dio(BaseOptions(
  baseUrl: 'https://${Env.kommoCrmSubdomain}.kommo.com/api/v4/',
  headers: {
    'Authorization': 'Bearer ${Env.kommoCrmToken}',
  },
));

final String kommoListId = Env.kommoCrmListId;
