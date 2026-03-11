import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class MyCardPageView extends StatelessWidget {
  final PageController controller;
  const MyCardPageView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller:controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => MyCard()),
    );
  }
}
