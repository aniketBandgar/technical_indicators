import 'package:flutter/material.dart';
import 'package:technical_indicators/model/oscilator_data_model.dart';

class OscillatorDataView extends StatefulWidget {
  const OscillatorDataView({Key? key}) : super(key: key);

  @override
  _OscillatorDataViewState createState() => _OscillatorDataViewState();
}

class _OscillatorDataViewState extends State<OscillatorDataView> {
  late List<OscillatorsDataModel> oscillatorDataList = [];

  @override
  void initState() {
    super.initState();
    oscillatorDataList = [
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'SELL'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'SELL'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'SELL'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'BUY'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'SELL'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'BUY'),
      OscillatorsDataModel(name: 'RSI14', value: 465.55, action: 'SELL'),
    ];
  }

  @override
  Widget build(BuildContext context) {
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
              Text(
                oscillatorDataList[i].name,
                textAlign: TextAlign.start,
              ),
              Text(
                '${oscillatorDataList[i].value}',
                textAlign: TextAlign.center,
              ),
              Text(
                oscillatorDataList[i].action,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: oscillatorDataList[i].action == 'SELL'
                        ? Colors.red
                        : Colors.blue),
              ),
            ],
          ),
        );
      },
      itemCount: oscillatorDataList.length,
    );
    ;
  }
}
