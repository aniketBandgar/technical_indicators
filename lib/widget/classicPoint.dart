import 'package:flutter/material.dart';
import 'package:technical_indicators/model/classicPoint_model.dart';

class ClassicDataView extends StatefulWidget {
  @override
  _ClassicDataViewState createState() => _ClassicDataViewState();
}

class _ClassicDataViewState extends State<ClassicDataView> {
  late List<ClassicPoint> classicData = [];

  @override
  void initState() {
    super.initState();
    classicData = [
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
      ClassicPoint(id: 'S3', value: 465.55),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (ctx, i) {
          return Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  classicData[i].id,
                  textAlign: TextAlign.start,
                ),
                Text(
                  '${classicData[i].value}',
                  textAlign: TextAlign.end,
                ),
              ],
            ),
          );
        },
        itemCount: classicData.length,
      ),
    );
  }
}
