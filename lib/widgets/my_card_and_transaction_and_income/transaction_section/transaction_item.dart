import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class TransactionItem extends StatelessWidget {
  final TransactionItemModel transactionItemModel;

  const TransactionItem({super.key, required this.transactionItemModel});

  @override
  Widget build(BuildContext context) {
    return Card(
     margin: EdgeInsets.zero,
      elevation: 0,
      color: Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionItemModel.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionItemModel.isWithdrawal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
