import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/Screens.dart/homepage.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => DataProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          canvasColor: Colors.black,
          primaryColor: Colors.black,
        ),
        home: HomePage(),
      ),
    );
  }
}
