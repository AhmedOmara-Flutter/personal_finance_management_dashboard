import 'package:personal_finance_management_dashboard/models/income_item_details_model.dart';

import '../../../utils/app_imports.dart';

class IncomeItemDetails extends StatelessWidget {
  final IncomeItemDetailsModel incomeItemDetailsModel;

  const IncomeItemDetails({super.key, required this.incomeItemDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 8),
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: incomeItemDetailsModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xff064061)),
      ),
      trailing: Text(
        incomeItemDetailsModel.value,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
