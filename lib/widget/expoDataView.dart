import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

class ExpoDataView extends StatefulWidget {
  @override
  _ExpoDataViewState createState() => _ExpoDataViewState();
}

class _ExpoDataViewState extends State<ExpoDataView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, expoData, _) {
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
                  expoData.exponentialData[i].period.toString(),
                  textAlign: TextAlign.start,
                ),
                Text(
                  expoData.exponentialData[i].value.toString(),
                  textAlign: TextAlign.center,
                ),
                Text(
                  expoData.exponentialData[i].type.toString().toUpperCase(),
                  style: TextStyle(
                      color: expoData.exponentialData[i].type
                                  .toString()
                                  .toUpperCase() ==
                              'SELL'
                          ? Colors.red
                          : Colors.blue),
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          );
        },
        itemCount: expoData.exponentialData.length,
      );
    });
  }
}
