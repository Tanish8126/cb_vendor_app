import 'package:get/get.dart';

import 'controller.dart';

class SalesDataBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalesDataController());
  }
}
