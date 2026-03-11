import '../../utils/app_imports.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController controller;
   int currentPageIndex=0;

  @override
  void initState() {
    controller=PageController();
    controller.addListener(() {
      setState(() {
        currentPageIndex=controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card',style:AppStyles.styleSemiBold20(context),),
        SizedBox(height: 16),
        MyCardPageView(controller:controller ,),
        SizedBox(height: 16),
        CustomDotIndicator(currentPageIndex:currentPageIndex),
      ],
    );
  }
}
