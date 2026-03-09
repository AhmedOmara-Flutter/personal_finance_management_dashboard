import '../utils/app_imports.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (BuildContext context) => Scaffold(),
      tabletLayout: (BuildContext context) => Scaffold(),
      desktopLayout: (BuildContext context) => DashboardDesktopLayout(),
    );
  }
}
