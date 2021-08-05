import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class WeeklyContentWidget extends GetView<WeeklyController> {
  final List<DataRow> dateRows = [];

  WeeklyContentWidget();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Obx(() => DataTable(
                  columns: [
                    DataColumn(label: Text('状态')),
                    DataColumn(
                      label: Text('投资经理'),
                    ),
                    DataColumn(
                      label: Text('项目名称'),
                    ),
                    DataColumn(
                      label: Text('项目进展'),
                    ),
                  ],
                  rows:
                      controller.userList // accessing list from Getx controller
                          .map(
                            (user) => DataRow(
                              cells: [
                                DataCell(Text('${user["name"]}')),
                                DataCell(Text('${user["username"]}')),
                                DataCell(Text('${user["mobile"]}')),
                                DataCell(Text('${user["order"]}')),
                              ],
                            ),
                          )
                          .toList(),
                )),
          ),
        ),
      ),
    );
  }
}
