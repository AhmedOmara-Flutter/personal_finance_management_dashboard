import 'package:personal_finance_management_dashboard/utils/app_imports.dart';
import 'package:personal_finance_management_dashboard/widgets/my_card_and_transaction_and_income/income_section/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: BuildChart()),
              SizedBox(width: 20),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
