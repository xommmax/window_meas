import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:window_meas/features/measurement/data/remote/ds/meas_remote_ds.dart';
import 'package:window_meas/features/measurement/data/remote/model/custom_field_dto.dart';
import 'package:window_meas/features/measurement/data/remote/scheme_builder/custom_fields_builder.dart';
import 'package:window_meas/features/measurement/data/remote/scheme_builder/field_code_mapper.dart';

class SchemeBuilder {
  final customFieldsBuilder = CustomFieldsBuilder();

  SchemeBuilder();

  Future<void> initScheme() async {
    try {
      await deleteScheme();

      final customFields = customFieldsBuilder.getInitCustomFields();

      final customFieldsJson = customFields.map((e) => e.toJson()).toList();

      final response =
          await kommoDio.post('catalogs/$kommoListId/custom_fields', data: customFieldsJson);

      debugPrint('@@@ Initialize scheme. Response: $response');
    } catch (e) {
      debugPrint('@@@ Initialize scheme. Error: $e');
      rethrow;
    }
  }

  Future<void> deleteScheme() async {
    try {
      final customFields = await getScheme();
      int delayCounter = 0;
      List<int> ids = customFields.where((e) => e.isDeletable == true).map((e) => e.id!).toList();

      final response = await Future.wait(ids.map((e) => Future.delayed(
            Duration(milliseconds: 300 * delayCounter++),
            () => kommoDio.delete('catalogs/$kommoListId/custom_fields/$e'),
          )));
      debugPrint('@@@ Delete scheme. Response: $response');
    } catch (e) {
      debugPrint('@@@ Delete scheme. Error: $e');
      rethrow;
    }
  }

  Future<List<CustomFieldDTO>> getScheme() async {
    try {
      final customFieldsJson = await kommoDio.get('catalogs/$kommoListId/custom_fields');
      final fieldsJson = (customFieldsJson.data['_embedded']['custom_fields'] as List)
          .cast<Map<String, dynamic>>();
      List<CustomFieldDTO> customFields =
          fieldsJson.map((e) => CustomFieldDTO.fromJson(e)).toList();
      debugPrint('@@@ Get scheme. Response: $customFields');
      return customFields;
    } catch (e) {
      debugPrint('@@@ Get scheme. Error: $e');
      return [];
    }
  }

  Future<void> addGroup() async {
    try {
      final response = await kommoDio.post('contacts/custom_fields/groups', data: [
        {'name': 'Основні'}
      ]);

      debugPrint('@@@ Initialize scheme. Response: $response');
    } catch (e) {
      debugPrint('@@@ Initialize scheme. Error: $e');
      rethrow;
    }
  }

  Future<void> updateField() async {
    const fieldCode = FieldToCode.profileSystem;
    try {
      final customFields = await getScheme();
      final oldCustomField = customFields.firstWhereOrNull((e) => e.code == fieldCode.code);

      if (oldCustomField == null) return;

      final fieldId = oldCustomField.id;
      final fieldSort = oldCustomField.sort;
      final fieldName = oldCustomField.name;

      await kommoDio.delete('catalogs/$kommoListId/custom_fields/$fieldId');

      final newCustomField = CustomFieldDTO(
        type: 'text',
        name: fieldName,
        sort: fieldSort,
        code: fieldCode.code,
      );

      final createResponse = await kommoDio
          .post('catalogs/$kommoListId/custom_fields', data: [newCustomField.toJson()]);

      debugPrint('@@@ Update field. Response: $createResponse');
    } catch (e) {
      debugPrint('@@@ Update field. Error: $e');
      rethrow;
    }
  }
}
