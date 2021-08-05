import 'package:get/get.dart';

import 'controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(
      () => MyController(),
    );
  }
}
