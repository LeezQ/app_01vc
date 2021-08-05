import 'package:get/get.dart';

import 'controller.dart';

class WeeklyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeeklyController>(
      () => WeeklyController(),
    );
  }
}
