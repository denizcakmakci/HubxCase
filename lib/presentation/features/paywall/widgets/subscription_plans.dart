import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class SubscriptionPlans extends StatelessWidget {
  const SubscriptionPlans({
    required this.isSelected,
    required this.title,
    required this.subtitle,
    super.key,
    this.badgeText,
    this.onTap,
  });
  final bool isSelected;
  final String title;
  final String subtitle;
  final String? badgeText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 63,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(
                    alpha: isSelected ? 0.09 : 0.04,
                  ),
                  borderRadius: BorderRadius.circular(14),
                  gradient: isSelected
                      ? const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            AppColors.primary,
                            Colors.transparent,
                          ],
                        )
                      : null,
                  border: Border.all(
                    width: isSelected ? 1.5 : 0.5,
                    color: isSelected
                        ? AppColors.primary
                        : AppColors.white.withValues(alpha: 0.3),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: buildInfo(context),
                ),
              ),
            ),
            if (badgeText != null) buildBadge(context),
          ],
        ),
      ),
    );
  }

  Row buildInfo(BuildContext context) {
    return Row(
      children: [
        isSelected
            ? const Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 14,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: AppColors.white,
                  ),
                ],
              )
            : CircleAvatar(
                radius: 14,
                backgroundColor: AppColors.white.withValues(
                  alpha: 0.08,
                ),
              ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.headlineMedium500(context),
            ),
            Text(
              subtitle,
              style: AppTextStyles.bodySmall300(context),
            ),
          ],
        ),
      ],
    );
  }

  Positioned buildBadge(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Text(
          badgeText ?? '',
          style: AppTextStyles.bodySmall(context),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
