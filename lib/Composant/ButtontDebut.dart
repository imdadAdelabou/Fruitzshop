import 'package:flutter/material.dart';
import 'package:fruitzshop/Screen1/HomeScreen.dart';

class ButtonDebut extends StatelessWidget {
  final String text;
  ButtonDebut({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Container(
        width: 327,
        height: 56,
        child: ButtonTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: RaisedButton(
            color: Color.fromRGBO(255, 164, 81, 1),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Montserat",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: -1,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
