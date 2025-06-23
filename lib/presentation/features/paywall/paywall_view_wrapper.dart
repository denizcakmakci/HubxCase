import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_bloc.dart';
import 'package:hubx_case_study/presentation/features/paywall/paywall_view.dart';

@RoutePage()
class PaywallWrapperView extends StatelessWidget {
  const PaywallWrapperView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PaywallBloc(),
      child: const PaywallView(),
    );
  }
}
