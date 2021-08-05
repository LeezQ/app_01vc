import 'dart:math';

import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class GoogleChartSample extends StatelessWidget {
  const GoogleChartSample({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(height: 200, child: _simplePie()),
    ]);
  }

  Widget _simplePie() {
    var random = Random();

    var dataV2 = [];
    for (var i = 0; i < 5; i++) {
      dataV2.add({"year": i, "sales": random.nextInt(100)});
    }

    var seriesList = [
      charts.Series<dynamic, int>(
        id: 'Sales',
        domainFn: (davaV2, _) => davaV2["year"],
        measureFn: (davaV2, _) => davaV2["sales"],
        data: dataV2,
      )
    ];

    return charts.PieChart(seriesList, animate: true);
  }
}
