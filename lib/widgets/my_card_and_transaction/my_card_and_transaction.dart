import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class MyCardAndTransaction extends StatelessWidget {
  const MyCardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: CustomBackgroundContainer(
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCardSection(),


              ]
          )
      ),
    );
  }
}
