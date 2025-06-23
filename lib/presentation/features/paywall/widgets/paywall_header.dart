import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class PaywallHeader extends StatelessWidget {
  const PaywallHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Assets.logo,
              ),
              const SizedBox(width: 6),
              Text(
                appStrings.premium,
                style: AppTextStyles.headlineLargeW300(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ],
          ),
          Text(
            appStrings.accessAllFeatures,
            style: AppTextStyles.bodyMedium300(
              context,
            ),
          ),
        ],
      ),
    );
  }
}
