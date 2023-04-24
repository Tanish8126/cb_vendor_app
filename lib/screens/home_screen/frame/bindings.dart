import 'package:get/get.dart';

import 'controller.dart';

class HomeScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }
}
