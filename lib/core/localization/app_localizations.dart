import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr'),
  ];

  ///
  ///
  /// In en, this message translates to:
  /// **'Welcome to {highlight}'**
  String startedHeadlineText(String highlight);

  ///
  ///
  /// In en, this message translates to:
  /// **'PlantApp'**
  String get startedHighlightWord;

  ///
  ///
  /// In en, this message translates to:
  /// **'Identify more than 3000+ plants and 88% accuracy.'**
  String get startedInfoText;

  ///
  ///
  /// In en, this message translates to:
  /// **'By tapping next, you are agreeing to PlantID '**
  String get policyText;

  ///
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  ///
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy.'**
  String get privacyPolicy;

  ///
  ///
  /// In en, this message translates to:
  /// **'Take a photo to {highlight} the plant!'**
  String onboardFirstHeadlineText(String highlight);

  ///
  ///
  /// In en, this message translates to:
  /// **'identify'**
  String get onboardFirstHighlightWord;

  ///
  ///
  /// In en, this message translates to:
  /// **'Get plant {highlight}'**
  String onboardLastHeadlineText(String highlight);

  ///
  ///
  /// In en, this message translates to:
  /// **'care guides'**
  String get onboardLastHighlightWord;

  ///
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get startedButton;

  ///
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Title for the premium subscription section
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premium;

  /// Text indicating that all features are included
  ///
  /// In en, this message translates to:
  /// **'Access All Features'**
  String get accessAllFeatures;

  /// Text indicating unlimited access
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get unlimited;

  /// Feature label for identifying plants
  ///
  /// In en, this message translates to:
  /// **'Plant Identify'**
  String get plantIdentify;

  /// Text indicating the service is faster
  ///
  /// In en, this message translates to:
  /// **'Faster'**
  String get faster;

  /// Text related to faster processing of plant identification
  ///
  /// In en, this message translates to:
  /// **'Process'**
  String get process;

  /// Label for 1 month subscription option
  ///
  /// In en, this message translates to:
  /// **'1 Month'**
  String get oneMonth;

  /// Monthly price with auto-renew note
  ///
  /// In en, this message translates to:
  /// **'\$2.99/month, auto renewable'**
  String get monthlyPrice;

  /// Label for 1 year subscription option
  ///
  /// In en, this message translates to:
  /// **'1 Year'**
  String get oneYear;

  /// Note indicating free trial and yearly charge
  ///
  /// In en, this message translates to:
  /// **'First 3 days free, then \$529.99/year'**
  String get freeTrialNote;

  /// Label indicating 50% discount
  ///
  /// In en, this message translates to:
  /// **'Save 50%'**
  String get save50;

  /// Call-to-action button for starting free trial
  ///
  /// In en, this message translates to:
  /// **'Try free for 3 days'**
  String get tryFree;

  /// Explanation about subscription after free trial period
  ///
  /// In en, this message translates to:
  /// **'After the 3-day free trial period you’ll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable.'**
  String get afterTrialNote;

  /// Combined label for Terms, Privacy Policy and Restore option
  ///
  /// In en, this message translates to:
  /// **'Terms  •  Privacy  •  Restore'**
  String get termsPrivacyRestore;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
