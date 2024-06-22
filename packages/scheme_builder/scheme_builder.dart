import 'package:flutter/foundation.dart';
import 'package:window_meas/features/meas/data/ds/meas_remote_ds.dart';
import 'package:window_meas/features/meas/data/model/custom_field_dto.dart';
import 'package:window_meas/l10n/localization.dart';

class SchemeBuilder {
  SchemeBuilder();

  Future<void> initScheme() async {
    try {
      List<CustomFieldDTO> customFields = [];

      customFields.add(CustomFieldDTO(name: Localization.l10n.clientName, type: 'text'));

      List<Map> customFieldsJson = customFields.map((e) => e.toJson()..remove('id')).toList();

      final response =
          await kommoDio.post('catalogs/$kommoListId/custom_fields', data: customFieldsJson);

      debugPrint('@@@ Custom fields response: $response');
    } catch (e) {
      debugPrint('@@@ Error: $e');
      rethrow;
    }
  }
}
