import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/extensions/screen_utils_extension.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class SubscriptionFeatures extends StatelessWidget {
  const SubscriptionFeatures({
    required this.iconPath,
    required this.title,
    required this.info,
    super.key,
  });

  final String iconPath;
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: context.screenWidth * 0.4,
          height: 124,
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.24),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(9),
                    child: SvgPicture.asset(
                      iconPath,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: AppTextStyles.displayLarge(context),
                ),
                const SizedBox(height: 4),
                Text(info, style: AppTextStyles.displaySmall(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
