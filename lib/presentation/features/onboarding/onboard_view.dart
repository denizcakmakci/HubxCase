import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_event.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_state.dart';
import 'package:hubx_case_study/presentation/features/onboarding/onboard_view_model.dart';
import 'package:hubx_case_study/presentation/features/onboarding/widgets/onboard_body_view.dart';
import 'package:hubx_case_study/presentation/features/onboarding/widgets/page_indicator.dart';
import 'package:hubx_case_study/presentation/features/onboarding/widgets/policy_text.dart';
import 'package:hubx_case_study/presentation/shared/buttons/rounded_full_width_button.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final OnboardViewModel viewModel = OnboardViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<OnboardBloc>();
      viewModel.init(context, bloc);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.onboardGetStartedBG),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: BlocBuilder<OnboardBloc, OnboardState>(
              builder: (context, state) {
                if (state.pages.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Column(
                  children: [
                    OnboardBodyView(
                      controller: viewModel.controller,
                      pages: viewModel.pages,
                    ),
                    RoundedFullWidthButton(
                      text: viewModel.pages[state.currentPage].buttonText,
                      onPressed: () => viewModel.onboardButtonOnTap(
                        context,
                        state.currentPage,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 30,
                      child: state.currentPage == 0
                          ? PolicyText(
                              prefixText: AppLocalizations.of(
                                context,
                              )!.policyText,
                              termsText: AppLocalizations.of(
                                context,
                              )!.termsOfUse,
                              privacyText: AppLocalizations.of(
                                context,
                              )!.privacyPolicy,
                            )
                          : PageIndicator(currentIndex: state.currentPage),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
