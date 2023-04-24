import 'package:cb_vendor_app/screens/menu_items/menu_items_screen.dart';
import 'package:cb_vendor_app/screens/past_orders/past_order_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen/home_screen.dart';
import '../screens/splash-to-home/login_check/login_check.dart';
import '../screens/splash-to-home/login_screen/loginscreen.dart';
import '../screens/main_screen/main_screen.dart';
import '../screens/notification_screen/notification_screen.dart';
import '../screens/payout_screen/payout_screen.dart';
import '../screens/splash-to-home/splash_screen/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginCheck.routeName: (context) => const LoginCheck(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
  NotificationScreen.routeName: (context) => const NotificationScreen(),
  PayoutScreen.routeName: (context) => const PayoutScreen(),
  MenuItemsScreen.routeName: (context) => const MenuItemsScreen(),
  PastOrderScreen.routeName: (context) => const PastOrderScreen(),
};
