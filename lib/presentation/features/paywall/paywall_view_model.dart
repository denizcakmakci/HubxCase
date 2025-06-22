import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/data/storage/shared_preferences_manager.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_bloc.dart';
import 'package:hubx_case_study/presentation/features/paywall/bloc/paywall_event.dart';
import 'package:hubx_case_study/presentation/features/paywall/paywall_model.dart';

class PaywallViewModel {
  late List<SubscriptionFeature> subscriptionFeautres = [];
  late List<SubscriptionPlan> subscriptionPlans = [];

  void init(BuildContext context, PaywallBloc bloc) {
    final appStrings = AppLocalizations.of(context)!;

    subscriptionFeautres = [
      SubscriptionFeature(
        title: appStrings.unlimited,
        subtitle: appStrings.plantIdentify,
        iconPath: Assets.scanner,
      ),
      SubscriptionFeature(
        title: appStrings.faster,
        subtitle: appStrings.process,
        iconPath: Assets.speedometer,
      ),
      SubscriptionFeature(
        title: appStrings.faster,
        subtitle: appStrings.process,
        iconPath: Assets.speedometer,
      ),
    ];

    subscriptionPlans = [
      SubscriptionPlan(
        id: 'basic',
        title: appStrings.oneMonth,
        subtitle: appStrings.monthlyPrice,
      ),
      SubscriptionPlan(
        id: 'premium',
        title: appStrings.oneYear,
        subtitle: appStrings.freeTrialNote,
        badgeText: appStrings.save50,
      ),
    ];

    context.read<PaywallBloc>().add(
      LoadSubscriptions(
        features: subscriptionFeautres,
        plans: subscriptionPlans,
      ),
    );
  }

  Future<void> setOnboardSeen() async {
    await SharedPreferencesManager.instance.setSeenOnboarding(value: true);
  }
}
