import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/router/app_router.gr.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/presentation/features/splash/splash_view_model.dart';
import 'package:lottie/lottie.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final viewModel = SplashViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndNavigate();
    });
  }

  Future<void> _checkAndNavigate() async {
    final seenOnboarding = await viewModel.checkSeenOnboarding();

    if (!mounted) return;

    if (seenOnboarding) {
      await context.router.replace(const MainTabRoute());
    } else {
      await context.router.replace(const OnboardWrapperRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.plantSplash,
              width: 200,
              height: 200,
              repeat: false,
            ),
            SvgPicture.asset(
              Assets.logo,
              colorFilter: const ColorFilter.mode(
                AppColors.primary,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
