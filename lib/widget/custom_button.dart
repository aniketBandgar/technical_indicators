import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  CustomButton({required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    ));
  }
}

// ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           primary: color,
//         ),
//         onPressed: () {},
// child: Text(
//   text,
//   style: TextStyle(
//     fontSize: 15,
//   ),
// ),
//       ),
