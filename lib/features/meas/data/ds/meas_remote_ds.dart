import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:window_meas/common/env.dart';
import 'package:window_meas/features/meas/data/model/custom_field_dto.dart';
import 'package:window_meas/features/meas/data/model/measurement_dto.dart';

final kommoDio = Dio(BaseOptions(
  baseUrl: 'https://${Env.kommoCrmSubdomain}.kommo.com/api/v4/',
  headers: {
    'Authorization': 'Bearer ${Env.kommoCrmToken}',
  },
));

final String kommoListId = Env.kommoCrmListId;

abstract class MeasurementRemoteDataSource {
  Future<int> addMeasurement(MeasurementDTO measurement);

  Future<void> updateMeasurement(MeasurementDTO measurement);

  Future<List<MeasurementDTO>> getMeasurements();
}

@Singleton(as: MeasurementRemoteDataSource)
class MeasurementRemoteDataSourceImpl implements MeasurementRemoteDataSource {
  MeasurementRemoteDataSourceImpl() {
    _checkInitialData();
  }

  List<CustomFieldDTO>? _customFields;

  @override
  Future<int> addMeasurement(MeasurementDTO measurement) async {
    try {
      await _checkInitialData();

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
      await _checkInitialData();
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
      await _checkInitialData();

      final response = await kommoDio.get('catalogs/$kommoListId/elements');
      final measurementsJson =
          (response.data['_embedded']['elements'] as List).cast<Map<String, dynamic>>();
      return measurementsJson.map((e) => MeasurementDTO.fromJson(e)).toList();
    } on DioException catch (e) {
      debugPrint('@@@ Error: $e');
      rethrow;
    }
  }

  Future<void> _getCustomFields() async {
    if (_customFields != null) return;

    try {
      final response = await kommoDio.get('catalogs/$kommoListId/custom_fields');
      final fieldsJson =
          (response.data['_embedded']['custom_fields'] as List).cast<Map<String, dynamic>>();
      _customFields = fieldsJson.map((e) => CustomFieldDTO.fromJson(e)).toList();
    } catch (_) {}
  }

  Future<void> _checkInitialData() async {
    await _getCustomFields();
  }
}
