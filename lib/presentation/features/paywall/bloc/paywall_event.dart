import 'package:hubx_case_study/presentation/features/paywall/paywall_model.dart';

abstract class PaywallEvent {}

class LoadSubscriptions extends PaywallEvent {
  LoadSubscriptions({
    required this.features,
    required this.plans,
  });
  final List<SubscriptionFeature> features;
  final List<SubscriptionPlan> plans;
}

class SelectPlan extends PaywallEvent {
  SelectPlan(this.planId);
  final String planId;
}
