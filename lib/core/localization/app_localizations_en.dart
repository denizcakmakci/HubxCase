// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String startedHeadlineText(String highlight) {
    return 'Welcome to $highlight';
  }

  @override
  String get startedHighlightWord => 'PlantApp';

  @override
  String get startedInfoText =>
      'Identify more than 3000+ plants and 88% accuracy.';

  @override
  String get policyText => 'By tapping next, you are agreeing to PlantID ';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy.';

  @override
  String onboardFirstHeadlineText(String highlight) {
    return 'Take a photo to $highlight the plant!';
  }

  @override
  String get onboardFirstHighlightWord => 'identify';

  @override
  String onboardLastHeadlineText(String highlight) {
    return 'Get plant $highlight';
  }

  @override
  String get onboardLastHighlightWord => 'care guides';

  @override
  String get startedButton => 'Get Started';

  @override
  String get continueButton => 'Continue';

  @override
  String get premium => 'Premium';

  @override
  String get accessAllFeatures => 'Access All Features';

  @override
  String get unlimited => 'Unlimited';

  @override
  String get plantIdentify => 'Plant Identify';

  @override
  String get faster => 'Faster';

  @override
  String get process => 'Process';

  @override
  String get oneMonth => '1 Month';

  @override
  String get monthlyPrice => '\$2.99/month, auto renewable';

  @override
  String get oneYear => '1 Year';

  @override
  String get freeTrialNote => 'First 3 days free, then \$529.99/year';

  @override
  String get save50 => 'Save 50%';

  @override
  String get tryFree => 'Try free for 3 days';

  @override
  String get afterTrialNote =>
      'After the 3-day free trial period you’ll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable.';

  @override
  String get termsPrivacyRestore => 'Terms  •  Privacy  •  Restore';
}
