import 'package:get/get.dart';

import 'controller.dart';

class ProjectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectsController>(
      () => ProjectsController(),
    );
  }
}
