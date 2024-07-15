import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart2 extends StatelessWidget {
  final List<BarChartGroupData> barGroups = [
    BarChartGroupData(x: 0, barRods: [
      BarChartRodData(
        y: 25,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 1, barRods: [
      BarChartRodData(
        y: 75,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 2, barRods: [
      BarChartRodData(
        y: 5,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 3, barRods: [
      BarChartRodData(
        y: 43,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 4, barRods: [
      BarChartRodData(
        y: 28,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 5, barRods: [
      BarChartRodData(
        y: 68,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ]),BarChartGroupData(x: 6, barRods: [
      BarChartRodData(
        y: 34,
        colors: [Colors.lightBlueAccent],
        width: 10,
      ),
    ])

  ];

  // List.generate(12, (index) {
  //   return BarChartGroupData(x: index, barRods: [
  //    BarChartRodData(
  //       y: 50,// Your value for the month,
  //       colors: [Colors.lightBlueAccent],
  //       width: 2,
  //     ),
  //   ]);
  // });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 300,
      width: 400,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: BarChart(
        BarChartData(
          maxY: 100,
          minY: 0,
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
                interval: 10,
                showTitles: true,
                reservedSize: 30,margin: 10
            ),

            bottomTitles: SideTitles(
              showTitles: true,
              getTitles: (double value) {
                switch (value.toInt()) {
                  case 0:
                    return 'Jan';
                  case 1:
                    return 'Feb';
                  case 2:
                    return 'Mar';

                  case 3:
                    return 'Apr';

                  case 4:
                    return 'May';

                  case 5:
                    return 'Jun';
                  default:
                    return '';
                }
              },
            ),
          ),
          barGroups: barGroups,
        ),
      ),
    );
  }
}
