import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/extensions/screen_utils_extension.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/router/app_router.gr.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_bloc.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_event.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_state.dart';
import 'package:hubx_case_study/presentation/features/paywall/paywall_view_model.dart';
import 'package:hubx_case_study/presentation/features/paywall/widgets/paywall_body_view.dart';
import 'package:hubx_case_study/presentation/features/paywall/widgets/paywall_header.dart';
import 'package:hubx_case_study/presentation/features/paywall/widgets/paywall_info_text.dart';
import 'package:hubx_case_study/presentation/shared/buttons/rounded_full_width_button.dart';

class PaywallView extends StatefulWidget {
  const PaywallView({super.key});

  @override
  State<PaywallView> createState() => _PaywallViewState();
}

class _PaywallViewState extends State<PaywallView> {
  final PaywallViewModel viewModel = PaywallViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<PaywallBloc>();
      viewModel.init(context, bloc);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.paywallBG,
      body: BlocBuilder<PaywallBloc, PaywallState>(
        builder: (context, state) {
          if (state.features.isEmpty || state.plans.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return Stack(
            children: [
              Image.asset(
                Assets.paywallBackground,
                width: context.screenWidth,
                fit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  const PaywallHeader(),
                  const SizedBox(height: 24),
                  PaywallBodyView(
                    features: state.features,
                    plans: state.plans,
                    selectedPlanId: state.selectedPlanId,
                    onPlanSelected: (planId) =>
                        context.read<PaywallBloc>().add(SelectPlan(planId)),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundedFullWidthButton(
                      text: appStrings.tryFree,
                      onPressed: () {
                        WidgetsBinding.instance.addPostFrameCallback(
                          (_) async {
                            await viewModel.setOnboardSeen();
                          },
                        );
                        if (!mounted) return;
                        // TODO(deniz): navigate home
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const PaywallInfoTexts(),
                  const SizedBox(height: 20),
                ],
              ),
              Positioned(
                top: 40,
                right: 24,
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(Assets.close),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
