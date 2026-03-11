import '../../utils/app_imports.dart';

class CustomDotIndicator extends StatelessWidget {
  final int currentPageIndex;
  const CustomDotIndicator({super.key, required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return getProperDot(index==currentPageIndex);
      }),
    );
  }

  Widget getProperDot(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        color:isActive? Color(0xff4EB7F2):Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
