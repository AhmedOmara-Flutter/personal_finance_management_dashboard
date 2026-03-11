import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          children: [
            Expanded(flex: 10, child: CustomDrawer()),
            Expanded(flex: 22, child: ExpensesAndInvoice()),
            Expanded(flex: 14, child: MyCardAndTransactionAndIncome()),
          ]
      ),
    );
  }
}
