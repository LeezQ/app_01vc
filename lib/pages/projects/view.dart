import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:number_paginator/number_paginator.dart';

import 'controller.dart';

class ProjectsPage extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Actions(), SeachInput(), ProductsWidget(), Pagination()],
      ),
    );
  }
}

class Actions extends GetView<ProjectsController> {
  const Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: () {}, child: Text('新建项目123')),
        TextButton(onPressed: () {}, child: Text('所有项目')),
        TextButton(onPressed: () {}, child: Text('我的项目'))
      ],
    );
  }
}

class SeachInput extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: CupertinoSearchTextField(
          placeholder: '搜索',
          onSubmitted: (value) {
            controller.searchParams['s'] = value;
          }),
    );
  }
}

class ProductsWidget extends GetView<ProjectsController> {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: ScreenUtil().setWidth(570),
        child: Obx(() => ListView.builder(
            itemCount: controller.productList.length,
            itemBuilder: (context, i) {
              return Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.grey),
                  )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(controller.productList[i]["status"].toString()),
                          Text(controller.productList[i]["name"]),
                          Text(
                              controller.productList[i]["createTs"].toString()),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('类型：${controller.productList[i]["type"]}'),
                          Text('轮次：${controller.productList[i]["round"]}'),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                              '投资经理: ${controller.productList[i]["user"]["name"]}'),
                          Text('城市：${controller.productList[i]["city"]}'),
                        ],
                      )
                    ],
                  ));
            })),
      ),
    );
  }
}

class Pagination extends GetView<ProjectsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      print(controller.pagination);
      if (controller.pagination["total"] != null) {
        return NumberPaginator(
          numberPages: 10,
          onPageChange: (int index) {
            controller.searchParams["current"] = (index + 1);
            controller.getProjects();
          },
        );
      } else {
        return Container();
      }
    });
  }
}
