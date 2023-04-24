import 'package:get/get.dart';

import 'controller.dart';

class OrdersScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersScreenController());
  }
}
