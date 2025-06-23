import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hubx_case_study/core/constants/assets.dart';
import 'package:hubx_case_study/core/localization/app_localizations.dart';
import 'package:hubx_case_study/core/router/app_router.gr.dart';
import 'package:hubx_case_study/core/theme/app_colors.dart';
import 'package:hubx_case_study/presentation/features/main/widgets/bottom_nav_item.dart';

@RoutePage()
class MainTabView extends StatelessWidget {
  const MainTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final appStrings = AppLocalizations.of(context)!;

    return AutoTabsScaffold(
      routes: const [
        HomeWrapperRoute(),
        DiagnoseRoute(),
        MyGardenRoute(),
        ProfileRoute(),
      ],
      floatingActionButton: SizedBox(
        width: 66,
        height: 66,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(
            side: BorderSide(
              color: AppColors.green,
              width: 4,
            ),
          ),
          elevation: 0,
          highlightElevation: 0,
          child: SvgPicture.asset(Assets.identify),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BottomNavItem(
                      iconPath: Assets.home,
                      label: appStrings.home,
                      isSelected: tabsRouter.activeIndex == 0,
                      onTap: () => tabsRouter.setActiveIndex(0),
                    ),
                    const SizedBox(width: 30),
                    BottomNavItem(
                      iconPath: Assets.diagnose,
                      label: appStrings.diagnose,
                      isSelected: tabsRouter.activeIndex == 1,
                      onTap: () => tabsRouter.setActiveIndex(1),
                    ),
                  ],
                ),
                Row(
                  children: [
                    BottomNavItem(
                      iconPath: Assets.myGarden,
                      label: appStrings.myGarden,
                      isSelected: tabsRouter.activeIndex == 2,
                      onTap: () => tabsRouter.setActiveIndex(2),
                    ),
                    const SizedBox(width: 30),
                    BottomNavItem(
                      iconPath: Assets.profile,
                      label: appStrings.profile,
                      isSelected: tabsRouter.activeIndex == 3,
                      onTap: () => tabsRouter.setActiveIndex(3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
