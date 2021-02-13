import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCombo extends StatefulWidget {
  final Color backgroundColor;
  final String imageCombo;
  final String titleCombo;
  final String fontFamily;
  final double size;
  final FontWeight weight;
  final double letterSpacing;
  final String price;
  final String id;
  SecondCombo({
    this.backgroundColor,
    this.imageCombo,
    this.titleCombo,
    this.fontFamily,
    this.size,
    this.weight,
    this.letterSpacing,
    this.price,
    this.id,
  });
  @override
  _SecondComboState createState() => _SecondComboState();
}

class _SecondComboState extends State<SecondCombo> {
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 150,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.0, right: 16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/images/Vector (1).svg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: widget.titleCombo == "Tropical fruit salad" ? 20.0 : 7.0,
            ),
            child: Hero(
              tag: widget.id,
              child: Image.asset(
                widget.imageCombo,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 5.0, right: 11.0),
            child: Text(
              widget.titleCombo,
              style: TextStyle(
                fontFamily: widget.fontFamily,
                fontSize: widget.size,
                fontWeight: widget.weight,
                letterSpacing: widget.letterSpacing,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 4.0),
                  child: SvgPicture.asset("assets/images/Group (3).svg"),
                ),
                Text(
                  widget.price,
                  style: TextStyle(
                    color: Color(0xFFF08626),
                    fontFamily: "Spectral-Sc",
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: -1,
                  ),
                ),
                SizedBox(width: 30),
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: SvgPicture.asset("assets/images/Group 10.svg"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
