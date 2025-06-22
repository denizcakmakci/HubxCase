import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/presentation/features/onboarding/bloc/onboard_event.dart';
import 'package:hubx_case_study/presentation/features/onboarding/onboard_view.dart';

@RoutePage()
class OnboardWrapperView extends StatelessWidget {
  const OnboardWrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardBloc(),
      child: const OnboardView(),
    );
  }
}
