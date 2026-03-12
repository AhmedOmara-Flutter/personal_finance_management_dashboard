import 'package:personal_finance_management_dashboard/widgets/my_card_and_transaction_and_income/income_section/build_detailed_chart.dart';
import 'package:personal_finance_management_dashboard/widgets/my_card_and_transaction_and_income/income_section/income_details_list_view.dart';

import '../../../utils/app_imports.dart';
import '../../../utils/config_size.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  MediaQuery
        .sizeOf(context)
        .width > ConfigSize.desktop && MediaQuery
        .sizeOf(context)
        .width < 1350 ? Expanded(child: Center(child: BuildDetailedChart())) : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
        Expanded(child: Center(child: BuildChart())),
        SizedBox(width: 30,),
        Expanded(flex: 2, child: IncomeDetailsListView()),
              ],
            );
  }
}
