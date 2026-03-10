import '../../../models/all_expenses_item_model.dart';
import '../../../utils/app_imports.dart';
import 'all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
   int activeIndex = 0;

  final List<AllExpensesItemModel> allExpensesItemList = [
    AllExpensesItemModel(
      image: Assets.images.balance.path,
      title: 'Balance',
      date: 'April 2022',
      price: r'$11,142',
    ),
    AllExpensesItemModel(
      image: Assets.images.income.path,
      title: 'Income',
      date: 'April 2022',
      price: r'$18,191',
    ),
    AllExpensesItemModel(
      image: Assets.images.expenses.path,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: allExpensesItemList
            .asMap()
            .entries
            .map((e) {
          int index = e.key;
          return Expanded(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(index!=activeIndex){
                    activeIndex = index;
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: index == 1 ? 12 : 0),
                padding: EdgeInsets.only(right: index == 0 ? 12 : 0),
                child: AllExpensesItem(allExpensesItemModel: e.value, isActive:index==activeIndex,),
              ),
            ),
          );
        }).toList()
    );
  }
}
