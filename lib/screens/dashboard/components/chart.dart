import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSelectionDatas)),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                "29.1",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 0.5),
              ),
              const Text("of 126GB"),
            ],
          ))
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
    radius: 25,
    showTitle: false,
    color: primaryColor,
    value: 15,
  ),
  PieChartSectionData(
    radius: 25,
    showTitle: false,
    color: const Color(0xFF26E5FF),
    value: 20,
  ),
  PieChartSectionData(
    radius: 25,
    showTitle: false,
    color: const Color(0xFFFFCF26),
    value: 10,
  ),
  PieChartSectionData(
    radius: 25,
    showTitle: false,
    color: const Color(0xFFFFCFFF),
    value: 13,
  ),
  PieChartSectionData(
    radius: 22,
    showTitle: false,
    color: primaryColor.withOpacity(0.1),
    value: 18,
  ),
];
