import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchFruit extends StatefulWidget {
  _SearchFruit createState() => _SearchFruit();
}

class _SearchFruit extends State<SearchFruit> {
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide.none,
        ),
        hintText: "Recherche de combos de salades de fruits",
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w200,
          color: Color(0xFF86869E),
          fontFamily: "IBM",
        ),
        filled: true,
        fillColor: Color(0xFFF3F4F9),
        prefixIcon: SvgPicture.asset(
          "assets/images/Group (2).svg",
          width: 13,
          height: 13,
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
