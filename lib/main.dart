import 'package:flutter/material.dart';
import 'package:hubx_case_study/core/injection/injection.dart';
import 'package:hubx_case_study/core/localization/localization_constants.dart';
import 'package:hubx_case_study/core/router/app_router.dart';
import 'package:hubx_case_study/core/theme/app_theme.dart';
import 'package:hubx_case_study/infra/storage/shared_preferences_manager.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferencesManager.instance.init();
  runApp(MultiProvider(providers: globalProviders, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp.router(
      localizationsDelegates: LocalizationConstants.localizationsDelegates,
      supportedLocales: LocalizationConstants.supportedLocales,
      theme: AppTheme.light(context),
      darkTheme: AppTheme.dark(context),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
