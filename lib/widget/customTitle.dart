import 'package:flutter/material.dart';

class CustomTITLE extends StatelessWidget {
  final String title;
  CustomTITLE(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
