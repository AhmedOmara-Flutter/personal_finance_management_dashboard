import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffF7F9FA),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Color(0xffFAFAFA),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xffFAFAFA)
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xffFAFAFA)
        )
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Color(0xffFAFAFA)
        )
      ),
    )
  );
}
