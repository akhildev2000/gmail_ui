import 'package:flutter/material.dart';
import 'package:gmail_ui/pages/general_settings.dart';
import 'package:gmail_ui/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gmail UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        home: const GeneralSettings());
  }
}
