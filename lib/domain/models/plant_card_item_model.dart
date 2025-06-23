import 'package:freezed_annotation/freezed_annotation.dart';

part 'plant_card_item_model.freezed.dart';

@freezed
abstract class PlantCardItemModel with _$PlantCardItemModel {
  const factory PlantCardItemModel({
    required int id,
    required String title,
    required String imageUri,
    required int order,
  }) = _PlantCardItemModel;
}
