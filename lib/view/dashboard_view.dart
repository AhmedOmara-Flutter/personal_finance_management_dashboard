import 'package:personal_finance_management_dashboard/utils/app_imports.dart';
import 'package:personal_finance_management_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:personal_finance_management_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  DashboardView({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              elevation: 0,
              title: Text('Financial Dashboard',style: AppStyles.styleSemiBold24(context),),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
                color: Color(0xff4EB7F2),
              ),
            )
          : null,
      drawer: SizedBox(width: MediaQuery.sizeOf(context).width*0.7, child: CustomDrawer()),
      body: AdaptiveLayout(

        mobileLayout: (BuildContext context) => DashboardMobileLayout(),
        tabletLayout: (BuildContext context) => DashboardTabletLayout(),
        desktopLayout: (BuildContext context) => DashboardDesktopLayout(),
      ),
    );
  }
}
