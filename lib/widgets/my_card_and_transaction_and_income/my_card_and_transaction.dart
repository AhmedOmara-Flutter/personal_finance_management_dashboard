import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class MyCardAndTransaction extends StatelessWidget {
  const MyCardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          SizedBox(height: 10),
          Divider(color: Color(0xffF1F1F1), thickness: 1),
          SizedBox(height: 10),
          TransactionSection(),
        ],
      ),
    );
  }
}
