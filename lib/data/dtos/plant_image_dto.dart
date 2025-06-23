import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_image_dto.freezed.dart';
part 'plant_image_dto.g.dart';

@freezed
abstract class PlantImageDto with _$PlantImageDto {
  const factory PlantImageDto({
    required int id,
    required String name,
    required String hash,
    required String ext,
    required String mime,
    required double size,
    required String url,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    String? alternativeText,
    String? caption,
    int? width,
    int? height,
    dynamic formats,
    String? previewUrl,
    String? provider,
    @JsonKey(name: 'provider_metadata') dynamic providerMetadata,
  }) = _PlantImageDto;

  factory PlantImageDto.fromJson(Map<String, dynamic> json) =>
      _$PlantImageDtoFromJson(json);
}
