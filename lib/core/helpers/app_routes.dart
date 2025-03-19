import 'package:get/get.dart';
import 'package:joura_pothole/view/auth/on_boarding_screen.dart';
import 'package:joura_pothole/view/auth/sign_in_screen.dart';
import 'package:joura_pothole/view/auth/splash_screen.dart';

class AppRoutes {
  // =================>>>>>>>>>> names <<<<<<<<<<<<<=================

  // Auth Routes
  static String splashScreen = '/splash_screen';
  static String onBoarding = '/on_boarding';
  static String signIn = '/sign_in';

  // =================>>>>>>>>>> route <<<<<<<<<<<<<=================
  static List<GetPage> pages = [
    // AuthRoutes
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onBoarding, page: () => OnBoardingScreen()),
    GetPage(name: signIn, page: () => SignInScreen()),
  ];
}
