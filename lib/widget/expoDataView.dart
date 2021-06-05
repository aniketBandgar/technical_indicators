import 'package:flutter/material.dart';
import 'package:technical_indicators/model/exponential_model.dart';

class ExpoDataView extends StatefulWidget {
  @override
  _ExpoDataViewState createState() => _ExpoDataViewState();
}

class _ExpoDataViewState extends State<ExpoDataView> {
  late List<Exponential> expoData = [];

  @override
  void initState() {
    super.initState();
    expoData = [
      Exponential(period: 'MA10', value: 465.55, type: 'SELL'),
      Exponential(period: 'MA10', value: 465.55, type: 'BUY'),
      Exponential(period: 'MA10', value: 465.55, type: 'SELL'),
      Exponential(period: 'MA10', value: 465.55, type: 'SELL'),
      Exponential(period: 'MA10', value: 465.55, type: 'BUY'),
      Exponential(period: 'MA10', value: 465.55, type: 'SELL'),
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
                expoData[i].period,
                textAlign: TextAlign.start,
              ),
              Text(
                '${expoData[i].value}',
                textAlign: TextAlign.center,
              ),
              Text(
                expoData[i].type,
                style: TextStyle(
                    color:
                        expoData[i].type == 'SELL' ? Colors.red : Colors.blue),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        );
      },
      itemCount: expoData.length,
    );
  }
}
