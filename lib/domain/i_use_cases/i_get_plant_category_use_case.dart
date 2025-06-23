import 'package:hubx_case_study/domain/i_use_cases/i_use_case.dart';
import 'package:hubx_case_study/domain/models/no_argument.dart';
import 'package:hubx_case_study/domain/models/plant_category_item_model.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

abstract class IGetPlantCategoryUseCase
    extends
        IUseCase<UIState<String, List<PlantCategoryItemModel>>, NoArgument> {}
