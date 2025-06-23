import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';
import 'package:hubx_case_study/presentation/features/home/bloc/home_bloc.dart';
import 'package:hubx_case_study/presentation/features/home/bloc/home_state.dart';
import 'package:hubx_case_study/presentation/features/home/widgets/category_card.dart';
import 'package:hubx_case_study/presentation/features/home/widgets/home_message_alert.dart';
import 'package:hubx_case_study/presentation/features/home/widgets/home_search.dart';
import 'package:hubx_case_study/presentation/features/home/widgets/plant_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  appStrings.hiPlantLover,
                  style: AppTextStyles.headlineMedium(
                    context,
                  ).copyWith(color: AppColors.textColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  appStrings.goodAfternoon,
                  style: AppTextStyles.titleLarge(
                    context,
                  ),
                ),
              ),
              const HomeSearch(),
              const HomeMessageAlert(),
              buildPlantsCards(),
              const SizedBox(height: 20),
              buildCategoryCards(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<HomeBloc, HomeState> buildPlantsCards() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.plantCards.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          success: (cards) {
            return SizedBox(
              height: 152,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: cards.length,
                separatorBuilder: (_, _) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final item = cards[index];
                  return PlantCard(
                    infoText: item.title,
                    imagePath: item.imageUri,
                  );
                },
              ),
            );
          },
          error: (error) => Center(child: Text('Hata: $error')),
        );
      },
    );
  }

  BlocBuilder<HomeBloc, HomeState> buildCategoryCards() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.plantCategories.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e) => Center(child: Text('Hata: $e')),
          success: (categories) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = categories[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CategoryCard(
                      title: item.title,
                      imagePath: item.imageUri,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
