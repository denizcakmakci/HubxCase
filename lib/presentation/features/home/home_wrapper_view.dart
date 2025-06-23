import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/data/use_cases/get_plant_category_use_case.dart';
import 'package:hubx_case_study/data/use_cases/get_plants_card_use_case.dart';
import 'package:hubx_case_study/presentation/features/home/bloc/home_bloc.dart';
import 'package:hubx_case_study/presentation/features/home/bloc/home_event.dart';
import 'package:hubx_case_study/presentation/features/home/home_view.dart';

@RoutePage()
class HomeWrapperView extends StatelessWidget {
  const HomeWrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        getPlantsCardUseCase: context.read<GetPlantsCardUseCase>(),
        getPlantCategoryUseCase: context.read<GetPlantCategoryUseCase>(),
      )..add(LoadHomeData()),
      child: const HomeView(),
    );
  }
}
