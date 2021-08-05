import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './controller.dart';
import 'widgets/widgets.dart';

class MyPage extends GetView<MyController> {
  // 内容页
  Widget _buildView() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CreateWidget(),
            ],
          ),
          UserTable()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildView(),
    );
  }
}
