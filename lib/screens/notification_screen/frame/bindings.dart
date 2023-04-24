import 'package:get/get.dart';

import 'controller.dart';

class NotificationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationController());
  }
}
