import 'package:flutter/material.dart';
import 'package:app_01vc/common/utils/utils.dart';
import 'package:app_01vc/common/values/values.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplicationController extends GetxController {
  ApplicationController();

  /// 响应式成员变量

  final state = ApplicationState();

  /// 成员变量

  // tab 页标题
  late final List<String> tabTitles;

  // 页控制器
  late final PageController pageController;

  // 底部导航项目
  late final List<BottomNavigationBarItem> bottomTabs;

  /// 事件

  // tab栏动画
  void handleNavBarTap(int index) {
    pageController.jumpToPage(index);
  }

  // tab栏页码切换
  void handlePageChanged(int page) {
    state.page = page;
  }

  /// 生命周期

  @override
  void onInit() {
    super.onInit();

    // 准备一些静态数据
    tabTitles = ['项目', 'Cagegory', 'Bookmarks', 'Account'];
    bottomTabs = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
        icon: Icon(
          Iconfont.home,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.home,
          color: AppColors.secondaryElementText,
        ),
        label: '项目',
        backgroundColor: AppColors.primaryBackground,
      ),
      new BottomNavigationBarItem(
        icon: Icon(
          Iconfont.grid,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.grid,
          color: AppColors.secondaryElementText,
        ),
        label: 'category',
        backgroundColor: AppColors.primaryBackground,
      ),
      new BottomNavigationBarItem(
        icon: Icon(
          Iconfont.tag,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.tag,
          color: AppColors.secondaryElementText,
        ),
        label: 'tag',
        backgroundColor: AppColors.primaryBackground,
      ),
      new BottomNavigationBarItem(
        icon: Icon(
          Iconfont.me,
          color: AppColors.tabBarElement,
        ),
        activeIcon: Icon(
          Iconfont.me,
          color: AppColors.secondaryElementText,
        ),
        label: 'my',
        backgroundColor: AppColors.primaryBackground,
      ),
    ];
    pageController = new PageController(initialPage: state.page);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
