import 'package:get/get.dart';

import 'controller.dart';

class ProjectsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectsController>(() => ProjectsController());
  }
}
