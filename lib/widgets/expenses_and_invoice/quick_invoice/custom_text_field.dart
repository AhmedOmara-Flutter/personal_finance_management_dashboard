import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({super.key, required this.hint,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),
      )
    );
  }
}
