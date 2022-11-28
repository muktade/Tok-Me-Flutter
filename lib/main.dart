import 'package:flutter/material.dart';
import 'package:tokme/constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokMe',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:const Text('Hello World'),
    );
  }
}
