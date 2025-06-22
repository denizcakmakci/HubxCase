import 'package:flutter/material.dart';
import 'package:hubx_case_study/presentation/features/paywall/paywall_model.dart';
import 'package:hubx_case_study/presentation/features/paywall/widgets/subscription_features.dart';
import 'package:hubx_case_study/presentation/features/paywall/widgets/subscription_plans.dart';

class PaywallBodyView extends StatelessWidget {
  const PaywallBodyView({
    required this.features,
    required this.plans,
    required this.selectedPlanId,
    required this.onPlanSelected,
    super.key,
  });
  final List<SubscriptionFeature> features;
  final List<SubscriptionPlan> plans;
  final String? selectedPlanId;
  final void Function(String planId) onPlanSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 124,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: features.length,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final feature = features[index];
              return SubscriptionFeatures(
                iconPath: feature.iconPath,
                title: feature.title,
                info: feature.subtitle,
              );
            },
          ),
        ),

        const SizedBox(height: 24),

        Column(
          children: plans.map((plan) {
            final isSelected = plan.id == selectedPlanId;

            return Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: SubscriptionPlans(
                  key: ValueKey(
                    plan.id + (isSelected ? '_selected' : '_unselected'),
                  ),
                  isSelected: isSelected,
                  title: plan.title,
                  subtitle: plan.subtitle,
                  badgeText: plan.badgeText,
                  onTap: () => onPlanSelected(plan.id),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
