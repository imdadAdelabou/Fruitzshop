import 'package:flutter/material.dart';

class FormFieldName extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      child: Theme(
        data: ThemeData(
          primaryColor: Color(0xFFF3F1F1),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF3F1F1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFF3F1F1),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFF3F1F1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
