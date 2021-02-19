import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Screen1/HomeScreen.dart';
import 'package:fruitzshop/Screen1/TrackOrder.dart';

class Congratulation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 160.0,
                bottom: 56.0,
              ),
              child: SvgPicture.asset("assets/images/Group 48.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 16.0,
              ),
              child: Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 26.0,
                  fontFamily: "IBMPlexMono",
                  color: Color(0xFF27214D),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 56.0,
              ),
              child: Text(
                "Your order have been taken \nand is being attended to",
                style: TextStyle(
                  fontFamily: "ubuntu",
                  fontWeight: FontWeight.w500,
                  fontSize: 20.0,
                  color: Color(0xFF27214D),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 60.0,
              ),
              child: Container(
                width: 151.0,
                height: 56.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TrackOrder(),
                      ),
                    );
                  },
                  color: Color(0xFFFFA451),
                  child: Text(
                    "Track order",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 56.0,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: Color(0xFFFFA451),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Text(
                  "Continue shopping",
                  style: TextStyle(
                    color: Color(0xFFFFA451),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
