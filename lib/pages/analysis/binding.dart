import 'package:get/get.dart';

import 'controller.dart';

class AnalysisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnalysisController>(
      () => AnalysisController(),
    );
  }
}
