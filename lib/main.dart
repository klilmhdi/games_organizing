import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:games_organizing/core/service/theme_service.dart';
import 'package:games_organizing/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/constants.dart';
import 'config/dependency_injection.dart';
import 'core/prefs/shared_preferenced.dart';

void main() async{
  initModul();
  await SharedPrefController().initPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeService _themeService;
  MyApp({super.key}) : _themeService = ThemeService();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        splitScreenMode: true,
        minTextAdapt: true,
        designSize: const Size(Constants.deviceWidth, Constants.deviceHeight),
        builder: (context, child) {
          return GetMaterialApp(
            locale: Locale("ar"),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashView,
            theme: _themeService.getThemeData(),
            themeMode: _themeService.getThemeMode(),
          );
        });
  }
}