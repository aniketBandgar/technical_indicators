import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';
import 'package:technical_indicators/widget/custom_button.dart';

class OscillatorsButton extends StatefulWidget {
  const OscillatorsButton({Key? key}) : super(key: key);

  @override
  _OscillatorsButtonState createState() => _OscillatorsButtonState();
}

class _OscillatorsButtonState extends State<OscillatorsButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, _) {
      return CustomButton(
          text: data.specificData['technical_indicator']['text']
              .toString()
              .toUpperCase(),
          color: data.specificData['technical_indicator']['text']
                          .toString()
                          .toUpperCase() ==
                      'SELL' ||
                  data.specificData['technical_indicator']['text']
                          .toString()
                          .toUpperCase() ==
                      'STRONG SELL'
              ? Colors.red
              : Colors.blue);
    });
  }
}
