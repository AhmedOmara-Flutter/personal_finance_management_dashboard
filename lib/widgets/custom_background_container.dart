import 'package:personal_finance_management_dashboard/utils/app_imports.dart';
import 'package:personal_finance_management_dashboard/utils/config_size.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double padding;

  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: MediaQuery
            .sizeOf(context)
            .width < ConfigSize.tablet
            ? BorderRadius.only(
            bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12))
            : BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
