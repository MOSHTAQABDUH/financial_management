import 'package:finance_management/features/splash/SplashScreen.dart';
import 'package:finance_management/features/dashboard/DashBoard.dart';
import 'package:finance_management/features/salary_setting/SalarySettingScreen.dart';

class AppRouting {
  static const SPLASH = "/";
  static const DASHBOARD = "/DASHBOARD";
  static const SALARY_SETTING = "/salary_setting";

  static buildRoutes() {
    return {
      SPLASH: (context) => SplashScreen(),
      DASHBOARD: (context) => DashBoard(),
      SALARY_SETTING: (context) => SalarySettingScreen(),
    };
  }
}