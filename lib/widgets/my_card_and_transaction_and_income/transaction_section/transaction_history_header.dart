import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        TextButton(
          style: TextButton.styleFrom(elevation: 0,foregroundColor: Colors.transparent),
          onPressed: () {},
          child: Text(
            'See All',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xff4EB7F2)),
          ),
        ),
      ],
    );
  }
}
