import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridCombo extends StatefulWidget {
  final String imageCombo;
  final String titleCombo;
  final String price;
  final String fontFamily;
  final FontWeight weight;
  final double size;
  final double letterSpacing;
  final Color couleur;

  GridCombo({
    this.imageCombo,
    this.titleCombo,
    this.price,
    this.fontFamily,
    this.weight,
    this.size,
    this.letterSpacing,
    this.couleur,
  });
  @override
  _GridComboState createState() => _GridComboState();
}

class _GridComboState extends State<GridCombo> {
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 183,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                right: 16.0,
              ),
              child: SvgPicture.asset("assets/images/Vector (1).svg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 7.0,
            ),
            child: Image.asset(
              widget.imageCombo,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Text(
              widget.titleCombo,
              style: TextStyle(
                fontFamily: widget.fontFamily,
                fontSize: widget.size,
                fontWeight: widget.weight,
                letterSpacing: widget.letterSpacing,
                color: widget.couleur,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
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
                SizedBox(width: 47),
                Padding(
                  padding: EdgeInsets.only(right: 10),
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
