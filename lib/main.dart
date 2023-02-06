import 'package:flutter/material.dart';
import 'package:ephphatatv/pages/main/main_page.dart';
import 'package:ephphatatv/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Ephphata TV';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // title: _title,
      theme: lightThemeData(context),
      home: const MainPage(),
    );
  }
}
