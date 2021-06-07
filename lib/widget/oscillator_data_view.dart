import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

class OscillatorDataView extends StatefulWidget {
  const OscillatorDataView({Key? key}) : super(key: key);

  @override
  _OscillatorDataViewState createState() => _OscillatorDataViewState();
}

class _OscillatorDataViewState extends State<OscillatorDataView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, osciData, _) {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (ctx, i) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    osciData.oscillatorDataList[i].name,
                    textAlign: TextAlign.start,
                  ),
                ),
                Expanded(
                  child: Text(
                    osciData.oscillatorDataList[i].value,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Text(
                    osciData.oscillatorDataList[i].action.toUpperCase(),
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: osciData.oscillatorDataList[i].action
                                    .toUpperCase() ==
                                'SELL'
                            ? Colors.red
                            : osciData.oscillatorDataList[i].action
                                        .toUpperCase() ==
                                    'NEUTRAL'
                                ? Colors.yellow
                                : Colors.blue),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: osciData.oscillatorDataList.length,
      );
    });
  }
}
