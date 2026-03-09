import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          children: [
            Expanded(
                child: CustomDrawer()
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20,right: 20),
              child: Column(children: [
                Center(
                  child:Text('ahmed'),
                )
              ],),
            ))
            // Expanded(child: Container(color: Colors.grey,margin: EdgeInsets.only(right: 20),)),

          ]
      ),
    );
  }
}
