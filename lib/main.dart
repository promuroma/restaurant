import 'package:flutter/material.dart';
import 'package:restaurant/welcome_page.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Restaurant App',
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
