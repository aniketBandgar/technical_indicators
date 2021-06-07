import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

enum Action {
  StrongBuy,
  BUY,
  Neutral,
  Sell,
  StrongSell,
}

class MovingAverages extends StatefulWidget {
  @override
  _MovingAveragesState createState() => _MovingAveragesState();
}

class _MovingAveragesState extends State<MovingAverages> {
  final List<Color> _color = [
    Color.fromRGBO(0, 122, 255, 1),
    Color.fromRGBO(0, 73, 153, 1),
    Color.fromRGBO(255, 185, 70, 1),
    Color.fromRGBO(153, 28, 48, 1),
    Color.fromRGBO(255, 46, 80, 1),
  ];

  final List<Map<String, String>> _period = [
    {'period': '1 MIN', 'json': '1min'},
    {'period': '5 MIN', 'json': '5min'},
    {'period': '15 MIN', 'json': '15min'},
    {'period': '30 MIN', 'json': '30min'},
    {'period': '1 HR', 'json': '1hour'},
    {'period': '5 HR', 'json': '5hour'},
    {'period': '1 DAY', 'json': 'daily'},
    {'period': '1 WK', 'json': 'weekly'},
    {'period': '1 MON', 'json': 'monthly'},
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var dataProvider = Provider.of<DataProvider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _color
                  .map((e) => Container(
                        height: 60,
                        width: 8,
                        color: e,
                      ))
                  .toList(),
            ),
          ),
          Container(
            height: 450,
            width: 80,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, i) {
                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedIndex = i);
                    dataProvider
                        .onSelectingPeriod(_period[i]['json'].toString());
                  },
                  child: Container(
                    height: 40,
                    width: 70,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: _selectedIndex == i ? 1 : 0.5,
                          color:
                              _selectedIndex == i ? Colors.white : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        _period[i]['period'].toString(),
                      ),
                    ),
                  ),
                );
              },
              itemCount: _period.length,
            ),
          ),
        ],
      ),
    );
  }
}
