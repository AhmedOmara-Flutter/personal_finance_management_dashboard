import '../../../utils/app_imports.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;

  const AllExpensesItemHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFAFAFA),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: Color(0xff064061),
          size: 24,
        ),
      ],
    );
  }
}
