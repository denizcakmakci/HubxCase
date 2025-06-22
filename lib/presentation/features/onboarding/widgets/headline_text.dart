import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/theme/app_text_style.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({
    required this.headlineText,
    required this.highlightWord,
    super.key,
    this.isStartedPage = false,
  });
  final String headlineText;
  final String highlightWord;
  final bool isStartedPage;

  @override
  Widget build(BuildContext context) {
    final parts = headlineText.split('%%');

    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyLarge,
        children: [
          TextSpan(
            text: parts.first,
            style: isStartedPage
                ? AppTextStyles.headlineLarge(context)
                : AppTextStyles.headlineLarge500(context),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  highlightWord,
                  style: isStartedPage
                      ? AppTextStyles.headlineLarge600(context)
                      : AppTextStyles.headlineLarge800(context),
                ),
                isStartedPage
                    ? const SizedBox()
                    : Image.asset(
                        Assets.onboardBrush,
                        fit: BoxFit.cover,
                      ),
              ],
            ),
          ),
          TextSpan(
            text: parts.last,
            style: isStartedPage
                ? AppTextStyles.headlineLarge(context)
                : AppTextStyles.headlineLarge500(context),
          ),
        ],
      ),
    );
  }
}
