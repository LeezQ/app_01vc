import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

/// hello
class CreateWidget extends GetView<WeeklyController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () {
              controller.handleTap(1);
            },
            child: Text('查看往期周报')),
        ElevatedButton(
            onPressed: () {
              controller.handleTap(1);
            },
            child: Text('查看往期周报'))
      ],
    );
  }
}
