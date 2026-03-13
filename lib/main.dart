import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance_management_dashboard/utils/app_theme.dart';
import 'package:personal_finance_management_dashboard/view/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: DashboardView(),
    );
  }
}