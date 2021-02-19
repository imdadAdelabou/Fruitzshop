import 'package:flutter/material.dart';
import 'package:fruitzshop/Screen1/Congratulation.dart';

class ButtonCompleteOrder extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 96,
      decoration: BoxDecoration(
        color: Color(0xFFFFA451),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Center(
        child: Container(
          width: 146,
          height: 56,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Congratulation(),
                ),
              ),
              child: Text(
                "Complete Order",
                style: TextStyle(
                  color: Color(0xFFFFA451),
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
