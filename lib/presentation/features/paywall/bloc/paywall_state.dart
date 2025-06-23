import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:hubx_case_study/presentation/features/paywall/paywall_model.dart';

class PaywallState extends Equatable {
  const PaywallState({
    this.features = const [],
    this.plans = const [],
    this.selectedPlanId,
  });
  final List<SubscriptionFeature> features;
  final List<SubscriptionPlan> plans;
  final String? selectedPlanId;

  SubscriptionPlan? get selectedPlan =>
      plans.firstWhereOrNull((p) => p.id == selectedPlanId);

  @override
  List<Object?> get props => [features, plans, selectedPlanId];
}
