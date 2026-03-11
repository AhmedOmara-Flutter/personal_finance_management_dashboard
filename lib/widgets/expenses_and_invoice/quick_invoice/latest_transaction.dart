import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/quick_invoice/latest_transaction_list_view.dart';

import '../../../utils/app_imports.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 8),
        LatestTransactionListView(),
      ],
    );
  }
}
