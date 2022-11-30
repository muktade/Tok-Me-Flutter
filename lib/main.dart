import 'package:flutter/material.dart';
import 'package:tokme/views/screens/auth/registration_sereen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TokMe',
      theme: ThemeData(
        // scaffoldBackgroundColor: backgroundColor,
      ),
      home:SignUp(),
    );
  }
}
