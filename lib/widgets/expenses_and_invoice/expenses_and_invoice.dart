import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class ExpensesAndInvoice extends StatelessWidget {
  const ExpensesAndInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32,right: 24,top: 32,bottom: 32),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height:24,),
          QuickInvoice(),
        ],
      ),
    );
  }
}
