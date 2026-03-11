import 'package:fl_chart/fl_chart.dart';
import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class BuildChart extends StatefulWidget {
  const BuildChart({super.key});

  @override
  State<BuildChart> createState() => _BuildChartState();
}

class _BuildChartState extends State<BuildChart> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: SizedBox(
        child: PieChart(getPieChartData())));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (touchResponse, pieTouchResponse) {
          setState(() {
            selectedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: Color(0xff208CC8),
          value: 40,
          showTitle: false,
          radius: selectedIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          color: Color(0xff4EB7F2),
          value: 25,
          showTitle: false,
          radius: selectedIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          color: Color(0xff064061),
          value: 20,
          showTitle: false,
          radius: selectedIndex == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          color: Color(0xffE2DECD),
          value: 15,
          showTitle: false,
          radius: selectedIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
