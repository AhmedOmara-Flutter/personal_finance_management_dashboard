import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('income', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOption(),
      ],
    );
  }
}
