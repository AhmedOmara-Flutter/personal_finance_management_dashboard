import '../utils/app_imports.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndInvoice(),
          SizedBox(height: 15),
          MyCardAndTransaction(),
          SizedBox(height: 15),
          IncomeSection(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
