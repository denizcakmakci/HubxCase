import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case_study/data/dtos/plant_image_dto.dart';

part 'plant_category_item_dto.freezed.dart';
part 'plant_category_item_dto.g.dart';

@freezed
abstract class PlantCategoryItemDto with _$PlantCategoryItemDto {
  const factory PlantCategoryItemDto({
    required int id,
    required String name,
    required String title,
    required int rank,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'updatedAt') required DateTime updatedAt,
    @JsonKey(name: 'publishedAt') required DateTime publishedAt,
    required PlantImageDto image,
  }) = _PlantCategoryItemDto;

  factory PlantCategoryItemDto.fromJson(Map<String, dynamic> json) =>
      _$PlantCategoryItemDtoFromJson(json);
}
