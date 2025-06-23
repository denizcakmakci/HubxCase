import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:hubx_case_study/core/extensions/screen_utils_extension.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.title, required this.imagePath, super.key});
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 0.5,
              color: AppColors.infoTextColor.withValues(alpha: 0.2),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            width: 120,
            height: 90,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: AutoSizeText(
                title,
                style: AppTextStyles.bodyMedium500(context),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.network(
            imagePath,
            height: context.screenHeight * 0.2,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
