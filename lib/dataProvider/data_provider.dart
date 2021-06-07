import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:technical_indicators/model/classicPoint_model.dart';
import 'package:technical_indicators/model/exponential_model.dart';
import 'package:technical_indicators/model/oscilator_data_model.dart';

class DataProvider with ChangeNotifier {
  Map<String, dynamic> _items = {};

  Map<String, dynamic> _specficPeriodData = {};

  Map<String, dynamic> get specificData {
    return {..._specficPeriodData};
  }

  List<Exponential> exponentialData = [];
  List<OscillatorsDataModel> oscillatorDataList = [];
  List<ClassicPoint> classicData = [];

  void onSelectingPeriod(String period) {
    _specficPeriodData = _items[period];
    getExpoData();
    getOscillatorData();
    getClassicData();
    notifyListeners();
  }

  Future<void> fetchDataFromServer() async {
    final url = Uri.parse(
        'https://api.bottomstreet.com/api/data?page=forex_detail&filter_name=identifier&filter_value=USDINR');
    final response = await http.get(url);
    final responseData = jsonDecode(response.body) as Map<String, dynamic>;

    _items = responseData['technical_indicator'];
    _specficPeriodData = _items['1min'];
    getExpoData();
    getOscillatorData();
    getClassicData();
    notifyListeners();
  }

  void getExpoData() {
    List<dynamic> expodata =
        _specficPeriodData['moving_averages']['table_data']['exponential'];
    exponentialData = expodata
        .map(
          (e) => Exponential(
              period: e['title'], value: e['value'], type: e['type']),
        )
        .toList();
    notifyListeners();
  }

  void getOscillatorData() {
    List<dynamic> osciData =
        _specficPeriodData['technical_indicator']['table_data'];
    oscillatorDataList = osciData
        .map((e) => OscillatorsDataModel(
            name: e['name'], value: e['value'], action: e['action']))
        .toList();
    notifyListeners();
  }

  void getClassicData() {
    List<ClassicPoint> dummyData = [];
    Map<String, dynamic> classic =
        _specficPeriodData['pivot_points']['classic'];
    classic.forEach((key, value) {
      dummyData.add(ClassicPoint(id: key, value: value));
    });
    classicData = dummyData;
    notifyListeners();
  }
}
