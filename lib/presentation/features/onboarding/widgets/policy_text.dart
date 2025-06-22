import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class PolicyText extends StatelessWidget {
  const PolicyText({
    required this.prefixText,
    required this.termsText,
    required this.privacyText,
    this.onTapTerms,
    this.onTapPrivacy,
    super.key,
  });
  final String prefixText;
  final String termsText;
  final String privacyText;
  final VoidCallback? onTapTerms;
  final VoidCallback? onTapPrivacy;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyles.labelMedium(context),
            children: [
              TextSpan(text: prefixText),
              TextSpan(
                text: termsText,
                style: AppTextStyles.labelMedium(context).copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.infoTextColor.withValues(
                    alpha: 0.7,
                  ),
                ),
                recognizer: TapGestureRecognizer()..onTap = onTapTerms,
              ),
              const TextSpan(text: ' & '),
              TextSpan(
                text: privacyText,
                style: AppTextStyles.labelMedium(context).copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.infoTextColor.withValues(
                    alpha: 0.7,
                  ),
                ),
                recognizer: TapGestureRecognizer()..onTap = onTapPrivacy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
