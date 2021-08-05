import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class UserTable extends GetView<MyController> {
  final List<DataRow> dateRows = [];

  UserTable();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Obx(() => DataTable(
                  columns: [
                    DataColumn(label: Text('用户名')),
                    DataColumn(
                      label: Text('投资经理'),
                    ),
                    DataColumn(
                      label: Text('联系方式'),
                    ),
                    DataColumn(
                      label: Text('优先级'),
                    ),
                    DataColumn(
                      label: Text('管理员'),
                    ),
                    DataColumn(
                      label: Text('操作'),
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
                                DataCell(Text('${user["isAdmin"]}')),
                                DataCell(Text('${user["isAdmin"]}')),
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
