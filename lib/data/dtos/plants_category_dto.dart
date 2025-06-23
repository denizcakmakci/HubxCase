import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case_study/data/dtos/meta_dto.dart';
import 'package:hubx_case_study/data/dtos/plant_category_item_dto.dart';

part 'plants_category_dto.freezed.dart';
part 'plants_category_dto.g.dart';

@freezed
abstract class PlantCategoryDto with _$PlantCategoryDto {
  const factory PlantCategoryDto({
    required List<PlantCategoryItemDto>? data,
    required MetaDto? meta,
  }) = _PlantCategoryDto;

  factory PlantCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$PlantCategoryDtoFromJson(json);
}
