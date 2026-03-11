import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/all_expenses/range_option.dart';
import '../../../utils/app_imports.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expensive', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOption(),
      ],
    );
  }
}
