import 'package:flutter/material.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/tabBar.dart';
import 'package:voting/practical/screens/home_Screen/Tabbar/votingScreen.dart';
import 'package:voting/practical/screens/page_view/pageView.dart';
import 'package:voting/practical/screens/splash_Screen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabbarScreen()
    );
  }
}


