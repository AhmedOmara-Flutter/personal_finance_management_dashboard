import 'package:personal_finance_management_dashboard/widgets/my_card_and_transaction/my_card_section.dart';
import '../../utils/app_imports.dart';

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
