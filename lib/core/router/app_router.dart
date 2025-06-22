import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:hubx_case_study/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      Platform.isIOS ? const RouteType.cupertino() : const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: SplashRoute.page,
      initial: true,
    ),
    CustomRoute<OnboardWrapperRoute>(
      page: OnboardWrapperRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ];
}
