import 'package:flutter/material.dart';

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

  final List<String> _period = [
    '1 MIN',
    '5 MIN',
    '15 MIN',
    '30 MIN',
    '1 HR',
    '5 HR',
    '1 DAY',
    '1 WK',
    '1 MON',
  ];

  @override
  Widget build(BuildContext context) {
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
          Column(
            children: _period
                .map((e) => GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 40,
                        width: 70,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.5, color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            e,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
