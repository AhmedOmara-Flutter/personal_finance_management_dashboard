import '../utils/app_imports.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double padding;

  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
