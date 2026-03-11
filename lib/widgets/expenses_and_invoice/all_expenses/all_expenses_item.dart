import '../../../models/all_expenses_item_model.dart';
import '../../../utils/app_imports.dart';
import 'all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: isActive ? Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image, isActive: isActive,),
          SizedBox(height: 30),
          Text(allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                  color: isActive ? Colors.white : Color(0xFF064061))),
          SizedBox(height: 4),
          Text(allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                  color: isActive ? Color(0xffFAFAFA) : Color(0xFFAAAAAA))),
          SizedBox(height: 12),
          Text(allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24(context).copyWith(
                color: isActive ? Colors.white : Color(0xFF4EB7F2)),)
        ],
      ),
    );
  }
}
