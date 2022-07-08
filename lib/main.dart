import 'package:flutter/material.dart';
import 'package:login/costant.dart';
import 'package:login/screens/welcome/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: primarycolor,
        scaffoldBackgroundColor: Colors.white,



      ),
      home: const welcomeScreen(),
    );
  }
}
