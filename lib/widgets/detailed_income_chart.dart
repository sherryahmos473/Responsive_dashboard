import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    final data = [
      PieChartSectionData(
        title: 'Design service',
        value: 40,
        color: const Color(0xff208CC8),
      ),
      PieChartSectionData(
        title: 'Design product',
        value: 25,
        color: const Color(0xff4EB7F2),
      ),
      PieChartSectionData(
        title: 'Product royalti',
        value: 20,
        color: const Color(0xff064061),
      ),
      PieChartSectionData(
        title: 'Other',
        value: 22,
        color: const Color(0xffE2DECD),
      ),
    ];
    double num = -1.38;
    if (MediaQuery.of(context).size.width < 1270) {
      num = num * MediaQuery.of(context).size.width / 1700;
    }
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: data.map((sectionData) {
        final isActive = activeIndex == data.indexOf(sectionData);
        return sectionData.copyWith(
          titlePositionPercentageOffset: isActive ? num : null,
          radius: isActive ? 60 : 50,
          titleStyle: isActive
              ? AppStyles.styleMedium16(context).copyWith(color: Colors.black)
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          title: isActive ? sectionData.title : '${sectionData.value}%',
        );
      }).toList(),
    );
  }
}
