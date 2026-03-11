import '../../../utils/app_imports.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;

  final bool isActive;

  const AllExpensesItemHeader(
      {super.key, required this.image, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? Color(0xff5FBEF3) : Color(0xffFAFAFA),
          ),
          child: Center(child: SvgPicture.asset(
            image, color: isActive ? Colors.white : Color(0xff4EB7F2),)),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isActive ? Colors.white : Color(0xff064061),
          size: 22,
        ),
      ],
    );
  }
}
