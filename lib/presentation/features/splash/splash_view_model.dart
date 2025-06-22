import 'package:shared_preferences/shared_preferences.dart';

class SplashViewModel {
  Future<bool> checkSeenOnboarding() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('seenOnboarding') ?? false;
  }
}
