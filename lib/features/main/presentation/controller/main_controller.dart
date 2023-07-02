import 'package:flutter/material.dart';
import 'package:games_organizing/core/resources/manager_styles.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../../../core/resources/manager_color.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/managers_size.dart';
import '../../../challenges/presentation/view/challenges_view.dart';
import '../../../home/presentation/view/home_view.dart';
import '../../../settings/presentation/view/settings_view.dart';

class MainController extends GetxController {
  PersistentTabController persistentTabController =
      PersistentTabController(initialIndex: 0);

  Color color = ManagerColors.black;
  List<Widget> screens = [
    const HomeView(),
    ChallengesView(),
    const SettingsView(),
  ];

  List<PersistentBottomNavBarItem> bottomNavBarItems = [
    PersistentBottomNavBarItem(
      contentPadding: 10,
      textStyle: getMediumTextStyle(
        fontSize: 12,
        color: ManagerColors.black,
      ),
      title: ManagerStrings.mainNav,
      icon: const Icon(
        Icons.home,
      ),
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.grey,
      iconSize: ManagerIconSize.s30,
      inactiveColorSecondary: ManagerColors.grey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 10,
      textStyle: getMediumTextStyle(
        fontSize: 12,
        color: ManagerColors.black,
      ),
      title: ManagerStrings.chalengesNav,
      icon: const Icon(
        Icons.emoji_events_rounded,
      ),
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.grey,
      iconSize: ManagerIconSize.s35,
      inactiveColorSecondary: ManagerColors.grey,
    ),
    PersistentBottomNavBarItem(
      contentPadding: 10,
      textStyle: getMediumTextStyle(
        fontSize: 12,
        color: ManagerColors.black,
      ),
      title: ManagerStrings.settingsNav,
      icon: const Icon(
        Icons.settings,
      ),
      iconSize: ManagerIconSize.s30,
      activeColorPrimary: ManagerColors.primaryColor,
      inactiveColorPrimary: ManagerColors.grey,
      inactiveColorSecondary: ManagerColors.grey,
    ),
  ];
}
