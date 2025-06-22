// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String startedHeadlineText(String highlight) {
    return '$highlight uygulamasına hoş geldiniz';
  }

  @override
  String get startedHighlightWord => 'PlantApp';

  @override
  String get startedInfoText =>
      '3000\'den fazla bitkiyi %88 doğrulukla tanımlayın.';

  @override
  String get policyText =>
      'İleri\'ye dokunarak PlantID şartlarını kabul etmiş olursunuz ';

  @override
  String get termsOfUse => 'Kullanım Koşulları';

  @override
  String get privacyPolicy => 'Gizlilik Politikası.';

  @override
  String onboardFirstHeadlineText(String highlight) {
    return 'Bitkiyi $highlight için bir fotoğraf çekin!';
  }

  @override
  String get onboardFirstHighlightWord => 'tanımlamak';

  @override
  String onboardLastHeadlineText(String highlight) {
    return 'Bitki $highlight alın';
  }

  @override
  String get onboardLastHighlightWord => 'bakım rehberlerini';

  @override
  String get startedButton => 'Başla';

  @override
  String get continueButton => 'Devam et';

  @override
  String get premium => 'Premium';

  @override
  String get accessAllFeatures => 'Tüm Özelliklerin Kilidini Aç';

  @override
  String get unlimited => 'Sınırsız';

  @override
  String get plantIdentify => 'Bitki Tanıma';

  @override
  String get faster => 'Daha Hızlı';

  @override
  String get process => 'İşlem';

  @override
  String get oneMonth => '1 Ay';

  @override
  String get monthlyPrice => '₺2,99/ay, otomatik yenilenir';

  @override
  String get oneYear => '1 Yıl';

  @override
  String get freeTrialNote => 'İlk 3 gün ücretsiz, ardından ₺529,99/yıl';

  @override
  String get save50 => '%50 Tasarruf';

  @override
  String get tryFree => '3 gün ücretsiz dene';

  @override
  String get afterTrialNote =>
      '3 günlük ücretsiz deneme süresinden sonra iptal etmediğiniz takdirde yıllık ₺274,99 ücretlendirilirsiniz. Yıllık abonelik otomatik yenilenir.';

  @override
  String get termsPrivacyRestore =>
      'Kullanım Şartları  •  Gizlilik  •  Geri Yükle';
}
