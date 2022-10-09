import 'package:flutter/material.dart';
import 'package:monews/screens/home_screen.dart';
import 'package:monews/screens/main_screen.dart';
import 'package:monews/screens/sample_news_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
