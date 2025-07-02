import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          Assets.homePlants,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          width: double.infinity,
          height: 44,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: 0.88),
            borderRadius: BorderRadius.circular(12),

            border: Border.all(
              width: 0.2,
              color: AppColors.lightGray.withValues(alpha: 0.25),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              SvgPicture.asset(Assets.search),
              const SizedBox(width: 10),
              Text(
                appStrings.searchForPlants,
                style: AppTextStyles.titleMedium(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
