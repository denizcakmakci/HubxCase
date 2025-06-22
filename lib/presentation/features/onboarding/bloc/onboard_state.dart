import 'package:hubx_case_study/presentation/features/onboarding/onboard_model.dart';

class OnboardState {
  OnboardState({
    this.currentPage = 0,
    this.pages = const [],
  });
  final int currentPage;
  final List<OnboardPageModel> pages;

  OnboardState copyWith({List<OnboardPageModel>? pages, int? currentPage}) {
    return OnboardState(
      pages: pages ?? this.pages,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
