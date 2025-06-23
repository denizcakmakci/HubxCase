import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    required this.iconPath,
    required this.label,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String iconPath;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final iconColor = isSelected
        ? AppColors.primary
        : AppColors.navBarItemIconColorDeactive;
    final textColor = isSelected
        ? AppColors.primary
        : AppColors.navBarItemTextColorDeactive;

    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
          Text(
            label,
            style: AppTextStyles.labelMedium(
              context,
            ).copyWith(color: textColor, letterSpacing: -0.24),
          ),
        ],
      ),
    );
  }
}
