import 'package:hubx_case_study/data/dtos/plant_card_item_dto.dart';
import 'package:hubx_case_study/domain/models/plant_card_item_model.dart';

extension PlantCardDtoToModel on List<PlantCardItemDto> {
  List<PlantCardItemModel> get toPlantCardItemModel {
    return map(
      (dto) => PlantCardItemModel(
        id: dto.id,
        title: dto.title,
        imageUri: dto.imageUri,
        order: dto.order,
      ),
    ).toList();
  }
}
