import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './controller.dart';
import 'widgets/google_chart_sample.dart';
import 'widgets/pid_char_sample.dart';

class AnalysisPage extends GetView<AnalysisController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffeceaeb),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Pie Chart',
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            PieChartSample(),
            const SizedBox(
              height: 12,
            ),
            GoogleChartSample(
              key: GlobalKey(),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
