import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String start;
  final String middle;
  final String end;

  CustomHeader({required this.start, required this.middle, required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            start,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            middle,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Text(
            end,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
