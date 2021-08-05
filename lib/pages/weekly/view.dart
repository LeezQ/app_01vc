import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './controller.dart';
import 'widgets/create.dart';
import 'widgets/weekly_content.dart';

class WeeklyPage extends GetView<WeeklyController> {
  // 内容页
  Widget _buildView() {
    return Container(
      child: Column(
        children: [CreateWidget(), WeeklyContentWidget()],
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
