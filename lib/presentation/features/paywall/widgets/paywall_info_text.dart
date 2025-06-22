import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class PaywallInfoTexts extends StatelessWidget {
  const PaywallInfoTexts({super.key});

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            appStrings.afterTrialNote,
            style: AppTextStyles.labelSmall(context),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appStrings.termsPrivacyRestore,
                style:
                    AppTextStyles.labelMedium(
                      context,
                    ).copyWith(
                      color: AppColors.white.withValues(
                        alpha: 0.5,
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
