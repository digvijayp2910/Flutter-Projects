import 'package:demohomescreen/widgets/piechart.dart';
import 'package:flutter/material.dart';

import 'fi_chart.dart';
import 'first_row_element.dart';
import 'listwidget.dart';
import 'metric_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FirstRowElement(),
                    SizedBox(
                      width: 20,
                    ),
                    const MetricCard(
                      title: 'VoB',
                      value: '50',
                      icon: Icons.settings,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    const MetricCard(
                      title: 'KPI3',
                      value: 'Value',
                      icon: Icons.person_outline,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    const MetricCard(
                      title: 'KPI4',
                      value: 'Value',
                      icon: Icons.person_outline,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(alignment: WrapAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 400,
                            width: 400,
                            child: MyBarChart()),
                        SizedBox(height: 20,),
                        Container(
                            height: 400,
                            width: 400,
                            child: PyChartContainer())
                      ]),
                  SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 400,
                          width: 400,
                          child: PyChartContainer()),
                      SizedBox(height: 20,),
                      Container(
                          height: 400,
                          width: 400,
                          child: UpdatesPage())
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
