import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_bloc.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_event.dart';
import 'package:hubx_case_study/presentation/features/onboarding/onboard_model.dart';
import 'package:hubx_case_study/presentation/features/onboarding/widgets/headline_text.dart';

class OnboardBodyView extends StatelessWidget {
  const OnboardBodyView({
    required this.controller,
    required this.pages,
    super.key,
  });
  final PageController controller;
  final List<OnboardPageModel> pages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: controller,
        itemCount: pages.length,
        onPageChanged: (index) {
          context.read<OnboardBloc>().add(PageChanged(index));
        },
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadlineText(
                headlineText: pages[index].title,
                highlightWord: pages[index].titleHighlight,
                isStartedPage: index == 0,
              ),
              const SizedBox(height: 8),
              Text(
                pages[index].subtitle ?? '',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(
                    0xFF13231B,
                  ).withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Image.asset(
                  pages[index].imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
