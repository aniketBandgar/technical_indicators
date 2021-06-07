import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

class ClassicDataView extends StatefulWidget {
  @override
  _ClassicDataViewState createState() => _ClassicDataViewState();
}

class _ClassicDataViewState extends State<ClassicDataView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(builder: (ctx, classic, _) {
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
                    classic.classicData[i].id,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    classic.classicData[i].value,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            );
          },
          itemCount: classic.classicData.length,
        ),
      );
    });
  }
}
