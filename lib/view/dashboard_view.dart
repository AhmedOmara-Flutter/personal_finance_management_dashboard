import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (BuildContext context) => Scaffold(),
      tabletLayout: (BuildContext context) =>,
      desktopLayout: (BuildContext context) => DashboardDesktopLayout(),
    );
  }
}
