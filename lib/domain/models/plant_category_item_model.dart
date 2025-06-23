import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_category_item_model.freezed.dart';

@freezed
abstract class PlantCategoryItemModel with _$PlantCategoryItemModel {
  const factory PlantCategoryItemModel({
    required int id,
    required String title,
    required int rank,
    required String imageUri,
  }) = _PlantCategoryItemModel;
}
