import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final int buy;
  final int neutral;
  final int sell;

  CustomRow({required this.buy, required this.neutral, required this.sell});

  Widget column(int amount, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$amount',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          column(buy, 'Buy'),
          column(neutral, 'Neutral'),
          column(sell, 'Sell'),
        ],
      ),
    );
  }
}
