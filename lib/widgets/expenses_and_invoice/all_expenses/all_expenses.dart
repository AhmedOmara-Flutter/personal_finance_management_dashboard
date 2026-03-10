import 'package:personal_finance_management_dashboard/widgets/custom_background_container.dart';

import '../../../utils/app_imports.dart';
import 'all_expenses_header.dart';
import 'all_expenses_item_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemList(),
        ],
      ),
    );
  }
}
