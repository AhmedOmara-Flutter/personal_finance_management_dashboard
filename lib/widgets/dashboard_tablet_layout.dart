import '../utils/app_imports.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 10, child: CustomDrawer()),
          Expanded(flex: 23, child: SingleChildScrollView(
            child: Column(
                children: [
                  ExpensesAndInvoice(),
                  MyCardAndTransaction(),
                  IncomeSection()
                ]
            ),
          )),
        ],
      ),
    );
  }
}
