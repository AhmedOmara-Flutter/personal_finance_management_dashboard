import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class TitleTextField extends StatelessWidget {
  final String hint,title;
  const TitleTextField({super.key, required this.hint, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
