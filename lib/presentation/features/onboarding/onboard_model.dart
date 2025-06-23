class OnboardPageModel {
  OnboardPageModel({
    required this.titleHighlight,
    required this.title,
    required this.buttonText,
    required this.imagePath,
    this.subtitle,
  });
  final String title;
  final String titleHighlight;
  final String? subtitle;
  final String buttonText;
  final String imagePath;
}
