import 'package:get/get.dart';

import '../../../utils/constants/constants.dart';

import '../../login_screen/loginscreen.dart';
import 'state.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      kDuration,
      () => Get.offAllNamed(LoginPage.routeName),
    );
  }

  final state = SplashState();
}
