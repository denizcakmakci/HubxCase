import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';
import 'package:hubx_case_study/presentation/features/home/widgets/gradient_text.dart';

class HomeMessageAlert extends StatelessWidget {
  const HomeMessageAlert({super.key});

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        height: 68,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.premiumBoxColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.message,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(appStrings, context),
                  buildSubtitle(appStrings, context),
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                Assets.chevronRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  GradientText buildSubtitle(
    AppLocalizations appStrings,
    BuildContext context,
  ) {
    return GradientText(
      text: appStrings.tapToUpgrade,
      style: AppTextStyles.displaySmall(
        context,
      ).copyWith(letterSpacing: 0),
      gradient: const LinearGradient(
        colors: [
          AppColors.yellowSubtitleGradientFirst,
          AppColors.yellowSubtitleGradientLast,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }

  GradientText buildTitle(AppLocalizations appStrings, BuildContext context) {
    return GradientText(
      text: appStrings.freePremiumAvailable,
      style: AppTextStyles.bodyMedium700(
        context,
      ),
      gradient: const LinearGradient(
        colors: [
          AppColors.yellowTitleGradientFirst,
          AppColors.yellowTitleGradientLast,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}
