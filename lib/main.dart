import 'package:flutter/material.dart';
import 'package:tokme/constant/colors.dart';
import 'package:tokme/views/screens/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TokMe',
      theme: ThemeData(
        // scaffoldBackgroundColor: backgroundColor,
      ),
      home:LoginScreen(),
    );
  }
}
