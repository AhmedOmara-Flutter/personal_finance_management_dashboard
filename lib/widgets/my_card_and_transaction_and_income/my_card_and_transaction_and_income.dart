import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class MyCardAndTransactionAndIncome extends StatelessWidget {
  const MyCardAndTransactionAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardAndTransaction(),
          SizedBox(height: 15),
          Expanded(child: IncomeSection()),
        ]
      ),
    );
  }
}
