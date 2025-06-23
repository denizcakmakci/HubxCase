import 'package:hubx_case_study/presentation/features/onboarding/onboard_model.dart';

abstract class OnboardEvent {}

class PageChanged extends OnboardEvent {
  PageChanged(this.pageIndex);
  final int pageIndex;
}

class PagesUpdated extends OnboardEvent {
  PagesUpdated(this.pages);
  final List<OnboardPageModel> pages;
}
