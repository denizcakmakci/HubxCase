import 'package:hubx_case_study/domain/models/plant_card_item_model.dart';
import 'package:hubx_case_study/domain/models/plant_category_item_model.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

class HomeState {
  HomeState({
    required this.plantCards,
    required this.plantCategories,
  });

  factory HomeState.initial() => HomeState(
    plantCards: const UIState.idle(),
    plantCategories: const UIState.idle(),
  );
  final UIState<String, List<PlantCardItemModel>> plantCards;
  final UIState<String, List<PlantCategoryItemModel>> plantCategories;

  HomeState copyWith({
    UIState<String, List<PlantCardItemModel>>? plantCards,
    UIState<String, List<PlantCategoryItemModel>>? plantCategories,
  }) {
    return HomeState(
      plantCards: plantCards ?? this.plantCards,
      plantCategories: plantCategories ?? this.plantCategories,
    );
  }
}
