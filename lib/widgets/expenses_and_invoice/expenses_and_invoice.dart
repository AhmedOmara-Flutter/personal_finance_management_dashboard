import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/all_expenses/all_expenses.dart';
import '../../utils/app_imports.dart';

class ExpensesAndInvoice extends StatelessWidget {
  const ExpensesAndInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32,right: 24,top: 32,bottom: 32),
      child: Column(
        children: [
          AllExpenses(),
          // SizedBox(height:24,),
          // QuickInvoice(),
        ],
      ),
    );
  }
}
