import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 8, child: CustomDrawer()),
        SizedBox(width: 15),
        Expanded(
          flex: 30,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 20, child: ExpensesAndInvoice()),
                    SizedBox(width: 15),
                    Expanded(flex: 10, child: MyCardAndTransactionAndIncome()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
