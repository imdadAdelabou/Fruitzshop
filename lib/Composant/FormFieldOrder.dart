import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldOrder extends StatelessWidget {
  final String myhinText;
  final List<TextInputFormatter> listInput;
  FormFieldOrder({
    this.myhinText,
    this.listInput,
  });
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      child: TextFormField(
        inputFormatters: listInput ?? null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF3F1F1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          hintText: myhinText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color(0xFFC2BDBD),
          ),
        ),
      ),
    );
  }
}
