import 'package:personal_finance_management_dashboard/models/income_item_details_model.dart';
import 'package:personal_finance_management_dashboard/widgets/my_card_and_transaction_and_income/income_section/Income_Item_details.dart';

import '../../../utils/app_imports.dart';

class IncomeDetailsListView extends StatelessWidget {
  IncomeDetailsListView({super.key});

  final List<IncomeItemDetailsModel> items = [
    IncomeItemDetailsModel(title: 'Design service', value: '%40', color: Color(0xff208CC8)),
    IncomeItemDetailsModel(title: 'Design product', value: '%25', color: Color(0xff4EB7F2)),
    IncomeItemDetailsModel(title: 'Product royalty', value: '%20', color: Color(0xff064061)),
    IncomeItemDetailsModel(title: 'Other', value: '%15', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) => IncomeItemDetails(incomeItemDetailsModel: item)).toList(),
    );
  }
}
