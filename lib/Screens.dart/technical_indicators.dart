import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_indicators/dataProvider/data_provider.dart';

import 'package:technical_indicators/widget/oscillatorsButton.dart';
import 'package:technical_indicators/widget/OscillatorsRow.dart';
import 'package:technical_indicators/widget/button.dart';
import 'package:technical_indicators/widget/classicPoint.dart';
import 'package:technical_indicators/widget/customDropButton.dart';
import 'package:technical_indicators/widget/customTitle.dart';

import 'package:technical_indicators/widget/exponential_widget.dart';
import 'package:technical_indicators/widget/movingAveragesRow.dart';
import 'package:technical_indicators/widget/moving_Averages.dart';
import 'package:technical_indicators/widget/oscillator.dart';

class TechnicalIndicators extends StatefulWidget {
  const TechnicalIndicators({Key? key}) : super(key: key);

  @override
  _TechnicalIndicatorsState createState() => _TechnicalIndicatorsState();
}

class _TechnicalIndicatorsState extends State<TechnicalIndicators> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<DataProvider>(context).fetchDataFromServer().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          )
        : Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: Text('USD/INR'),
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomDropDown(
                        hint: 'Technical Indicators', isExpanded: true),
                    CustomTITLE('Summary'),
                    MovingAverages(),
                    CustomTITLE('Moving Averages'),
                    Button(),
                    MovingAveragesRow(),
                    CustomDropDown(hint: 'Exponential', isExpanded: false),
                    ExponentialWidget(),
                    CustomTITLE('Oscillators'),
                    OscillatorsButton(),
                    OscillatorsRow(),
                    Oscillators(),
                    CustomTITLE('Pivote Points'),
                    CustomDropDown(hint: 'Classic', isExpanded: false),
                    ClassicDataView(),
                  ],
                ),
              ),
            ),
          );
  }
}
