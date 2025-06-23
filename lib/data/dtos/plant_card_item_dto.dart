import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_card_item_dto.freezed.dart';
part 'plant_card_item_dto.g.dart';

@freezed
abstract class PlantCardItemDto with _$PlantCardItemDto {
  const factory PlantCardItemDto({
    required int id,
    required String title,
    required String subtitle,
    @JsonKey(name: 'image_uri') required String imageUri,
    required String uri,
    required int order,
  }) = _PlantCardItemDto;

  factory PlantCardItemDto.fromJson(Map<String, dynamic> json) =>
      _$PlantCardItemDtoFromJson(json);
}
