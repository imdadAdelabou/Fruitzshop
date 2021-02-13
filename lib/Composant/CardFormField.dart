import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardFormField extends StatelessWidget {
  final List<TextInputFormatter> listInput;
  CardFormField({this.listInput});
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      child: TextFormField(
        inputFormatters: listInput,
        decoration: InputDecoration(
          hintText: "1234 5678 9012 1314",
          hintStyle: TextStyle(
            color: Color(0xFFC2BDBD),
          ),
          filled: true,
          fillColor: Color(0xFFF3F1F1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
