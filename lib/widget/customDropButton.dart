import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String hint;
  final bool isExpanded;
  CustomDropDown({required this.hint, required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(18, 18, 18, 1),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            items: [],
            hint: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                hint,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            isExpanded: isExpanded,
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
            iconSize: 20,
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
