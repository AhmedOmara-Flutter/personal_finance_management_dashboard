import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class ExpensesAndInvoice extends StatelessWidget {
  const ExpensesAndInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:15),
        AllExpenses(),
        SizedBox(height:15),
        QuickInvoice(),
        SizedBox(height:15),
      ],
    );
  }
}
