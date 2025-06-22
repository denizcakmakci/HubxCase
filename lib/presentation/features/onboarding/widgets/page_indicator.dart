import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    required this.currentIndex,
    super.key,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 250,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 4,
          ),
          width: currentIndex - 1 == index ? 10 : 6,
          height: currentIndex - 1 == index ? 10 : 6,
          decoration: BoxDecoration(
            color: currentIndex - 1 == index
                ? AppColors.infoTextColor
                : AppColors.textColor.withValues(
                    alpha: 0.25,
                  ),
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        );
      }),
    );
  }
}
