import 'package:cb_vendor_app/screens/main_screen/main_screen.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/constants.dart';

import 'state.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      kDuration,
      () => Get.offAllNamed(MainScreen.routeName),
    );
  }

  final state = SplashState();
}
