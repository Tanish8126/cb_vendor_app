import 'package:get/get.dart';

import 'controller.dart';

class PayoutScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PayoutScreenController());
  }
}
