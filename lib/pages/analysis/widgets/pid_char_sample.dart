import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class PieChartSample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSampleState();
}

class PieChartSampleState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Indicator(
                  color: const Color(0xff0293ee),
                  text: 'One',
                  isSquare: false,
                ),
                Indicator(
                  color: const Color(0xfff8b250),
                  text: 'Two',
                  isSquare: false,
                ),
                Indicator(
                  color: const Color(0xff845bef),
                  text: 'Three',
                  isSquare: false,
                ),
                Indicator(
                  color: const Color(0xff13d38e),
                  text: 'Four',
                  isSquare: false,
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                      // pieTouchData:
                      //     PieTouchData(touchCallback: (pieTouchResponse) {
                      //   setState(() {
                      //     final desiredTouch = pieTouchResponse.touchInput
                      //             is! PointerExitEvent &&
                      //         pieTouchResponse.touchInput is! PointerUpEvent;
                      //     if (desiredTouch &&
                      //         pieTouchResponse.touchedSection != null) {
                      //       touchedIndex = pieTouchResponse
                      //           .touchedSection!.touchedSectionIndex;
                      //     } else {
                      //       touchedIndex = -1;
                      //     }
                      //   });
                      // }),
                      // startDegreeOffset: 180,
                      // borderData: FlBorderData(
                      //   show: false,
                      // ),
                      // sectionsSpace: 1,
                      centerSpaceRadius: 0,
                      sections: showingSections()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        switch (i) {
          case 0:
            return PieChartSectionData(
              value: 25,
              title: 's',
              radius: 65,
            );
          case 1:
            return PieChartSectionData(
              value: 25,
              title: '',
              radius: 65,
            );
          case 2:
            return PieChartSectionData(
              value: 25,
              title: '',
              radius: 65,
            );
          case 3:
            return PieChartSectionData(
              value: 25,
              title: '',
              radius: 65,
            );
          default:
            throw Error();
        }
      },
    );
  }
}
