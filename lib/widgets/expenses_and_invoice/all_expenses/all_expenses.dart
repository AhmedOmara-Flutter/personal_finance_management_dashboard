import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 12),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
