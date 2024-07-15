import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        alignment: Alignment.center,
        children: [
          PieChart(PieChartData(sections: [
        PieChartSectionData(value: 180, title: "tv", showTitle: false,radius: 20,color: Colors.purple),
        PieChartSectionData(value: 90, title: "phone", showTitle: false,radius: 20,color: Colors.red),
        PieChartSectionData(value: 90, title: "mobile", showTitle: false,radius: 20,color: Colors.green),
            ],sectionsSpace: 0, centerSpaceRadius: 50,)),
    Positioned(
    child:Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Total EPPAP',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '50',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),)]);
  }
}
