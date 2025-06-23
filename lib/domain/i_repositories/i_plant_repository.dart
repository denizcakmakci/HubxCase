import 'package:hubx_case_study/core/errors/either.dart';
import 'package:hubx_case_study/core/errors/failure.dart';
import 'package:hubx_case_study/data/dtos/plant_card_item_dto.dart';
import 'package:hubx_case_study/data/dtos/plants_category_dto.dart';

abstract class IPlantRepository {
  Future<Either<Failure, List<PlantCardItemDto>>> getPlantsCard();
  Future<Either<Failure, PlantCategoryDto>> getPlantsCategory();
}
