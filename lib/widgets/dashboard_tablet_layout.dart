import 'package:personal_finance_management_dashboard/widgets/dashboard_mobile_layout.dart';

import '../utils/app_imports.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 10, child: CustomDrawer()),
        Expanded(flex: 23, child: Padding(
          padding: const EdgeInsets.only(top:15, left: 15, right: 15),
          child: DashboardMobileLayout(),
        )),
      ],
    );
  }
}
