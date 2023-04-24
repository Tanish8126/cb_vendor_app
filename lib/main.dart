import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'global.dart';
import 'screens/splash-to-home/login_screen/loginscreen.dart';
import 'utils/routes.dart';
import 'utils/theme.dart';

Future<void> main() async {
  await Global.init();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
              title: 'Chai Vendor',
              debugShowCheckedModeBanner: false,
              theme: theme(),
              initialRoute: LoginScreen.routeName,
              routes: routes);
        });
  }
}
