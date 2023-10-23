import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LightThemePage extends StatelessWidget {
  const LightThemePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light
      ),
      home: MyHomePage(),
    );
  }
}