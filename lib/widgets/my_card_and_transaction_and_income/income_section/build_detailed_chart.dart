import 'package:fl_chart/fl_chart.dart';
import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class BuildDetailedChart extends StatefulWidget {
  const BuildDetailedChart({super.key});

  @override
  State<BuildDetailedChart> createState() => _BuildDetailedChartState();
}

class _BuildDetailedChartState extends State<BuildDetailedChart> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: SizedBox(child: PieChart(getPieChartData())),
    );
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
          title: '40%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),
          value: 40,
          radius: selectedIndex == 0 ? 40 : 30,
        ),
        PieChartSectionData(
          color: Color(0xff4EB7F2),
          value: 25,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),

          title: '25%',
          radius: selectedIndex == 1 ? 40 : 30,
        ),
        PieChartSectionData(
          color: Color(0xff064061),
          value: 20,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),

          title: '20%',
          radius: selectedIndex == 2 ? 40 : 30,
        ),
        PieChartSectionData(
          color: Color(0xffE2DECD),
          value: 15,
          title: '15%',
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Colors.white),

          radius: selectedIndex == 3 ? 40 : 30,
        ),
      ],
    );
  }
}
