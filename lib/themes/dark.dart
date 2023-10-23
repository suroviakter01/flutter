import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class DarkThemePage extends StatelessWidget {
  const DarkThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
       home: MyHomePage(),
    );
  }
}