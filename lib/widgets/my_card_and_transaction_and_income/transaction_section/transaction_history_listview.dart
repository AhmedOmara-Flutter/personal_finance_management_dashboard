import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class TransactionHistoryListView extends StatelessWidget {
  TransactionHistoryListView({super.key});

  final List<TransactionItemModel> items = [
    TransactionItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$14,129',
      isWithdrawal: true,
    ),
    TransactionItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionItemModel(
      title: 'Jun Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,145',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((item) => TransactionItem(transactionItemModel: item))
          .toList(),
    );
  }
}
