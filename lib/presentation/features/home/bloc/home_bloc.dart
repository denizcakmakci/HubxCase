import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/data/use_cases/get_plant_category_use_case.dart';
import 'package:hubx_case_study/data/use_cases/get_plants_card_use_case.dart';
import 'package:hubx_case_study/domain/models/no_argument.dart';
import 'package:hubx_case_study/presentation/core/ui_state.dart';

import 'package:hubx_case_study/presentation/features/home/bloc/home_event.dart';
import 'package:hubx_case_study/presentation/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.getPlantsCardUseCase,
    required this.getPlantCategoryUseCase,
  }) : super(HomeState.initial()) {
    on<LoadHomeData>(_onLoadHomeData);
  }
  final GetPlantsCardUseCase getPlantsCardUseCase;
  final GetPlantCategoryUseCase getPlantCategoryUseCase;

  Future<void> _onLoadHomeData(
    LoadHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        plantCards: const UIState.loading(),
        plantCategories: const UIState.loading(),
      ),
    );

    try {
      final plantCards = await getPlantsCardUseCase.invoke(const NoArgument());
      final plantCategories = await getPlantCategoryUseCase.invoke(
        const NoArgument(),
      );

      emit(
        state.copyWith(
          plantCards: plantCards,
          plantCategories: plantCategories,
        ),
      );
    } on Exception catch (e) {
      emit(
        state.copyWith(
          plantCards: UIState.error(e.toString()),
          plantCategories: UIState.error(e.toString()),
        ),
      );
    }
  }
}
