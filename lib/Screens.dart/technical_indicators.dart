import 'package:flutter/material.dart';
import 'package:technical_indicators/widget/classicPoint.dart';
import 'package:technical_indicators/widget/customDropButton.dart';
import 'package:technical_indicators/widget/customTitle.dart';
import 'package:technical_indicators/widget/custom_button.dart';
import 'package:technical_indicators/widget/custom_row.dart';
import 'package:technical_indicators/widget/exponential_widget.dart';
import 'package:technical_indicators/widget/moving_Averages.dart';
import 'package:technical_indicators/widget/oscillator.dart';

class TechnicalIndicators extends StatelessWidget {
  const TechnicalIndicators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              CustomDropDown(hint: 'Technical Indicators', isExpanded: true),
              CustomTITLE('Summary'),
              MovingAverages(),
              CustomTITLE('Moving Averages'),
              CustomButton(text: 'BUY', color: Colors.blue),
              CustomRow(buy: 1, neutral: 1, sell: 2),
              CustomDropDown(hint: 'Exponential', isExpanded: false),
              ExponentialWidget(),
              CustomTITLE('Oscillators'),
              CustomButton(text: 'STRONG SELL', color: Colors.red),
              CustomRow(buy: 1, neutral: 2, sell: 2),
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
