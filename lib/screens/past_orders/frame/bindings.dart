import 'package:get/get.dart';

import 'controller.dart';

class PastOrdersBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastOrdersController());
  }
}
