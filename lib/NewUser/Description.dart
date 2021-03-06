import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitzshop/NewUser/EnterFirstName.dart';

class Description extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 469,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 164, 81, 1),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 37,
                  right: 37,
                  bottom: 34,
                  child: SvgPicture.asset("assets/images/Ellipse 1.svg"),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width - 100,
                  top: 131,
                  child: Image.asset("assets/images/fruitDrops.png"),
                ),
                Positioned(
                  top: 155,
                  left: 35,
                  right: 39,
                  bottom: 54,
                  child: Image.asset("assets/images/fruitBox.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 29.0, right: 30.0, bottom: 8.0, top: 59.0),
            child: Container(
              child: Text(
                "Get The Freshest Fruit Salad Combo",
                style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 18,
                  letterSpacing: -1,
                  color: Color.fromRGBO(39, 33, 77, 1),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0, right: 64.0, bottom: 39),
            child: Text(
              "We deliver the best and freshest fruit \nsalad in town. Order for a combo \ntoday!!!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 14,
                fontFamily: "Montserat",
                color: Color.fromRGBO(93, 87, 126, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42, right: 24),
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
                      MaterialPageRoute(builder: (context) => EnterFirstName()),
                    );
                  },
                  child: Text(
                    "Let’s Continue",
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
          ),
        ],
      ),
    );
  }
}
