import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/router/app_router.gr.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_bloc.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_event.dart';
import 'package:hubx_case_study/presentation/features/onboarding/onboard_model.dart';

class OnboardViewModel {
  final PageController controller = PageController();

  late List<OnboardPageModel> pages = [];

  void init(BuildContext context, OnboardBloc bloc) {
    final loc = AppLocalizations.of(context)!;

    pages = [
      OnboardPageModel(
        title: loc.startedHeadlineText('%%'),
        titleHighlight: loc.startedHighlightWord,
        subtitle: loc.startedInfoText,
        buttonText: loc.startedButton,
        imagePath: Assets.onboardGetStarted,
      ),
      OnboardPageModel(
        title: loc.onboardFirstHeadlineText('%%'),
        titleHighlight: loc.onboardFirstHighlightWord,
        buttonText: loc.continueButton,
        imagePath: Assets.onboardPhoto,
      ),
      OnboardPageModel(
        title: loc.onboardLastHeadlineText('%%'),
        titleHighlight: loc.onboardLastHighlightWord,
        buttonText: loc.continueButton,
        imagePath: Assets.onboardInfo,
      ),
    ];

    bloc.add(PagesUpdated(pages));
  }

  void navigatePaywall(
    BuildContext context,
  ) {
    context.router.navigate(const PaywallWrapperRoute());
  }

  void onboardButtonOnTap(BuildContext context, int currentPage) {
    if (currentPage == pages.length - 1) {
      navigatePaywall(context);
    } else {
      controller.nextPage(
        duration: const Duration(
          milliseconds: 300,
        ),
        curve: Curves.easeIn,
      );
    }
  }
}
