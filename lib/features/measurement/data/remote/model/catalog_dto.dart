import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_dto.freezed.dart';
part 'catalog_dto.g.dart';

@freezed
class CatalogDTO with _$CatalogDTO {
  const CatalogDTO._();

  const factory CatalogDTO({
    required int id,
    required String name,
    required int createdAt,
  }) = _CatalogDTO;

  factory CatalogDTO.fromJson(Map<String, dynamic> json) => _$CatalogDTOFromJson(json);
}
