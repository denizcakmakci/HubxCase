import 'package:hubx_case_study/data/dtos/plants_category_dto.dart';
import 'package:hubx_case_study/domain/models/plant_category_item_model.dart';

extension PlantCategoryDtoToModel on PlantCategoryDto {
  List<PlantCategoryItemModel> get toPlantCategoryItemModel {
    return (data ?? []).map((item) {
      return PlantCategoryItemModel(
        id: item.id,
        title: item.title,
        rank: item.rank,
        imageUri: item.image.url,
      );
    }).toList();
  }
}
