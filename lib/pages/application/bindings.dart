import 'package:app_01vc/pages/analysis/controller.dart';
import 'package:app_01vc/pages/category/index.dart';
import 'package:app_01vc/pages/main/index.dart';
import 'package:app_01vc/pages/my/controller.dart';
import 'package:app_01vc/pages/projects/controller.dart';
import 'package:app_01vc/pages/weekly/controller.dart';
import 'package:get/get.dart';

import 'controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<ProjectsController>(() => ProjectsController());
    Get.lazyPut<WeeklyController>(() => WeeklyController());
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<AnalysisController>(() => AnalysisController());
  }
}
