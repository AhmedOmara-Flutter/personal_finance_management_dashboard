
import '../../../models/all_expenses_item_model.dart';
import '../../../utils/app_imports.dart';
import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  const AllExpensesItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image,),
          SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16(context)),
          SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24(context)),
        ],
      ),
    );
  }
}
