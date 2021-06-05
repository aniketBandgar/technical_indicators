import 'package:flutter/material.dart';
import 'package:technical_indicators/widget/oscillator_data_view.dart';

import 'custom_header.dart';

class Oscillators extends StatelessWidget {
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
              start: 'Name',
              middle: 'Value',
              end: 'Action',
            ),
          ),
          OscillatorDataView(),
        ],
      ),
    );
    ;
  }
}
