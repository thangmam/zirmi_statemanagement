import 'package:flutter/material.dart';
import 'package:zirmi_flutter_stagemgmt/screens/home_screen.dart';
import 'package:zirmi_flutter_stagemgmt/screens/home_screen_four.dart';
import 'package:zirmi_flutter_stagemgmt/screens/home_screen_three.dart';
import 'package:zirmi_flutter_stagemgmt/screens/home_screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreenFour(),
    );
  }
}
