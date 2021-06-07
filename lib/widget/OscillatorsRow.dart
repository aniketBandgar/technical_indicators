import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';
import 'package:technical_indicators/widget/custom_row.dart';

class OscillatorsRow extends StatefulWidget {
  const OscillatorsRow({Key? key}) : super(key: key);

  @override
  _OscillatorsRowState createState() => _OscillatorsRowState();
}

class _OscillatorsRowState extends State<OscillatorsRow> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, _) {
      return CustomRow(
          buy: int.parse(data.specificData['technical_indicator']['buy']),
          neutral:
              int.parse(data.specificData['technical_indicator']['neutral']),
          sell: int.parse(data.specificData['technical_indicator']['sell']));
    });
  }
}
