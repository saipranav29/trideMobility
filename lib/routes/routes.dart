import 'package:get/get.dart';
import 'package:tride_mobility/screens/home_screen.dart';
import 'package:tride_mobility/screens/introductory_screen.dart';
import 'package:tride_mobility/screens/splash_screen.dart';

class Routes{

  static final routes = [
    GetPage(name: '/splashScreen', page: () => SplashScreen()),
    GetPage(name: '/introScreen', page: () => IntroductoryScreen()),
    GetPage(name: '/homeScreen', page: () => HomeScreen()),
  ];
}