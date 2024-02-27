import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnalyticsCard extends StatelessWidget {
  const AnalyticsCard(
      {super.key,
      required this.text,
      required this.value1,
      required this.value2,
      required this.value1Color,
      required this.value2Color});

  final String text;
  final double value1;
  final double value2;
  final Color value1Color;
  final Color value2Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 108,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1.3,
            child: PieChart(
              swapAnimationDuration: Duration(milliseconds: 150),
              swapAnimationCurve: Curves.linear,
              PieChartData(
                  sectionsSpace: 0,
                  startDegreeOffset: 8,
                  centerSpaceRadius: 22,
                  sections: [
                    PieChartSectionData(
                      radius: 8,
                      color: value1Color,
                      value: value1,
                      title: "",
                      titleStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    PieChartSectionData(
                      radius: 8,
                      color: value2Color,
                      value: value2,
                      title: "",
                      titleStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
