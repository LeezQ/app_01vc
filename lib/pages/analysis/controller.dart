
import 'package:app_01vc/common/utils/utils.dart';
import 'package:get/get.dart';

class AnalysisController extends GetxController {
  AnalysisController();

  /// 响应式成员变量
  var userList = [].obs;
  var projects = [].obs;

  /// 成员变量

  /// 事件

  // tap
  void handleTap(int index) {}

  /// 生命周期

  ///在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();

    // new 对象
    // 初始静态数据
  }

  ///在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
    getData();
    // async 拉取数据
  }

  void getData() async {
    var response = await HttpUtil().get('/api/analysis');
    userList.value = response["users"];
    projects.value = response["projects"];
  }

  /// 处理控制器使用的资源。就像 closing events 一样，
  @override
  void onClose() {
    super.onClose();
    // 1 stop & close 关闭对象
    // 2 save 持久化数据
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
    // dispose 释放对象
  }
}
