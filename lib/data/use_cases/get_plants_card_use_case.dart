import 'package:hubx_case_study/core/extensions/either_extension.dart';
import 'package:hubx_case_study/data/repositories/plant_repository.dart';
import 'package:hubx_case_study/domain/extensions/plant_card_dto_to_model.dart';
import 'package:hubx_case_study/domain/i_use_cases/i_get_plants_card_use_case.dart';
import 'package:hubx_case_study/domain/models/no_argument.dart';
import 'package:hubx_case_study/domain/models/plant_card_item_model.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

class GetPlantsCardUseCase extends IGetPlantsCardUseCase {
  GetPlantsCardUseCase(this.repository);

  final PlantRepository repository;

  @override
  Future<UIState<String, List<PlantCardItemModel>>> invoke(
    NoArgument param,
  ) async {
    final result = await repository.getPlantsCard();
    return result.callModified(
      rightCallback: (data) => data.toPlantCardItemModel,
    );
  }
}
