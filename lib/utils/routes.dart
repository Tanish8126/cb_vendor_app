import 'package:flutter/cupertino.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/login_check/login_check.dart';
import '../screens/login_screen/loginscreen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/notification_screen/notification_screen.dart';
import '../screens/payout_screen/payout_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginCheck.routeName: (context) => const LoginCheck(),
  LoginPage.routeName: (context) => LoginPage(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  PayoutScreen.routeName: (context) => const PayoutScreen(),
};
