import 'package:flutter/material.dart';
import 'package:technical_indicators/Screens.dart/technical_indicators.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.grey),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => TechnicalIndicators()));
            },
            child: Text(
              'USD/INR',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ));
  }
}
