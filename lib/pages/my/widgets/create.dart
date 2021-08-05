import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

/// hello
class CreateWidget extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            onPressed: () {
              controller.handleTap(1);
            },
            child: Text('创建用户2')));
  }
}
