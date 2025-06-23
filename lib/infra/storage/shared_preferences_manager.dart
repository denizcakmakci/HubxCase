import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  SharedPreferencesManager._privateConstructor();
  static const _keySeenOnboarding = 'seenOnboarding';
  static final SharedPreferencesManager instance =
      SharedPreferencesManager._privateConstructor();

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get hasSeenOnboarding => _prefs?.getBool(_keySeenOnboarding) ?? false;

  Future<void> setSeenOnboarding({required bool value}) async {
    await _prefs?.setBool(_keySeenOnboarding, value);
  }
}
