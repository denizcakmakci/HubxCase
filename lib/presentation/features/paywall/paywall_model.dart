class SubscriptionFeature {
  SubscriptionFeature({
    required this.title,
    required this.iconPath,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  final String iconPath;
}

class SubscriptionPlan {
  SubscriptionPlan({
    required this.id,
    required this.title,
    required this.subtitle,
    this.badgeText,
  });
  final String id;
  final String title;
  final String subtitle;
  final String? badgeText;
}
