import 'package:get/get.dart';

import 'controller.dart';

class LoginScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
  }
}
