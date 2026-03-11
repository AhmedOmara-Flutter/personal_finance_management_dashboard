import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/quick_invoice/custom_text_field.dart';
import '../../../utils/app_imports.dart';

class TitleTextField extends StatelessWidget {
  final String hint,title;
  const TitleTextField({super.key, required this.hint, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 11),
        CustomTextField(hint: hint),
      ],
    );
  }
}
