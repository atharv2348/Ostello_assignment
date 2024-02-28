import 'package:flutter/material.dart';
import 'package:ostello_assignment/utils/sizes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Avenir'),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
