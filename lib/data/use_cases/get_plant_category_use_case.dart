import 'package:hubx_case_study/core/extensions/either_extension.dart';
import 'package:hubx_case_study/data/repositories/plant_repository.dart';
import 'package:hubx_case_study/domain/extensions/plant_category_dto_to_model.dart';
import 'package:hubx_case_study/domain/i_use_cases/i_get_plant_category_use_case.dart';
import 'package:hubx_case_study/domain/models/no_argument.dart';
import 'package:hubx_case_study/domain/models/plant_category_item_model.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

class GetPlantCategoryUseCase extends IGetPlantCategoryUseCase {
  GetPlantCategoryUseCase(this.repository);

  final PlantRepository repository;
  @override
  Future<UIState<String, List<PlantCategoryItemModel>>> invoke(
    NoArgument param,
  ) async {
    final result = await repository.getPlantsCategory();
    return result.callModified(
      rightCallback: (data) => data.toPlantCategoryItemModel,
    );
  }
}
