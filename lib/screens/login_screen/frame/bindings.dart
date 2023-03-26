import 'package:get/get.dart';

import 'controller.dart';

class MessageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());
  }
}
