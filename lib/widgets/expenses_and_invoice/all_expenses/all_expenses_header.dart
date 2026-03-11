import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

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
