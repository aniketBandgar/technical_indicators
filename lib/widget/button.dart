import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';
import 'package:technical_indicators/widget/custom_button.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, _) {
      return CustomButton(
          text: data.specificData['moving_averages']['text']
              .toString()
              .toUpperCase(),
          color: data.specificData['moving_averages']['text']
                          .toString()
                          .toUpperCase() ==
                      'SELL' ||
                  data.specificData['moving_averages']['text']
                          .toString()
                          .toUpperCase() ==
                      'STRONG SELL'
              ? Colors.red
              : Colors.blue);
    });
  }
}
