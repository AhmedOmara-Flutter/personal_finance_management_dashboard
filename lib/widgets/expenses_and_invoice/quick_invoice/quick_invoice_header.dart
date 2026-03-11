import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Spacer(),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add, color: Color(0xff4EB7F2), size: 22,),
        )
      ],
    );
  }
}
