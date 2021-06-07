import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

import 'custom_row.dart';

class MovingAveragesRow extends StatefulWidget {
  const MovingAveragesRow({Key? key}) : super(key: key);

  @override
  _MovingAveragesRowState createState() => _MovingAveragesRowState();
}

class _MovingAveragesRowState extends State<MovingAveragesRow> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, data, _) {
      return CustomRow(
          buy: int.parse(data.specificData['moving_averages']['buy']),
          neutral: 0,
          sell: int.parse(data.specificData['moving_averages']['sell']));
    });
  }
}
