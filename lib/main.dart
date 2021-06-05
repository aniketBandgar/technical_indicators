import 'package:flutter/material.dart';
import 'package:technical_indicators/Screens.dart/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        canvasColor: Colors.black,
        primaryColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
