import 'package:flutter/material.dart';
import 'package:technical_indicators/widget/custom_header.dart';
import 'package:technical_indicators/widget/expoDataView.dart';

class ExponentialWidget extends StatefulWidget {
  @override
  _ExponentialWidgetState createState() => _ExponentialWidgetState();
}

class _ExponentialWidgetState extends State<ExponentialWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(18, 18, 18, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomHeader(
              start: 'period',
              middle: 'value',
              end: 'type',
            ),
          ),
          ExpoDataView(),
        ],
      ),
    );
  }
}
