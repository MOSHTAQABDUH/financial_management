import 'package:finance_management/features/splash/SplashScreen.dart';
import 'package:finance_management/features/dashboard/DashBoard.dart';
import 'package:finance_management/features/salary_setting/SalarySettingScreen.dart';
import 'package:finance_management/MainApp.dart';

class AppRouting {
  static const SPLASH = "/";
  static const MAIN_APP = "/main";
  static const DASHBOARD = "/dashboard";
  static const SALARY_SETTING = "/salary_setting";

  static buildRoutes() {
    return {
      SPLASH: (context) => SplashScreen(),
      MAIN_APP: (context) => MainApp(),
      DASHBOARD: (context) => Dashboard(),
      SALARY_SETTING: (context) => SalarySettingScreen(),
    };
  }
}