import 'package:flutter/widgets.dart';
import 'package:hubx_case_study/core/extensions/screen_utils_extension.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({required this.imagePath, required this.infoText, super.key});
  final String imagePath;
  final String infoText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imagePath,
            height: 164,
            width: context.screenWidth * 0.6,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 14,
            ),
            child: SizedBox(
              width: context.screenWidth * 0.5,
              child: Text(
                infoText,
                style: AppTextStyles.headlineMedium(
                  context,
                ).copyWith(color: AppColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
