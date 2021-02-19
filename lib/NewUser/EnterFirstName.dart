import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruitzshop/Composant/ButtontDebut.dart';
import 'package:fruitzshop/NewUser/FormFieldName.dart';

class EnterFirstName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  top: 420,
                  right: 40,
                  left: 306,
                  child: SvgPicture.asset("assets/images/Ellipse 3.svg"),
                ),
                Positioned(
                  top: 427,
                  left: 70,
                  bottom: 33,
                  child: SvgPicture.asset("assets/images/Ellipse 2.svg"),
                ),
                Positioned(
                  top: 429,
                  right: 78,
                  left: 274,
                  child: SvgPicture.asset("assets/images/Ellipse 4.svg"),
                ),
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
                  top: 134,
                  left: 31,
                  right: 43,
                  bottom: 53.79,
                  child: Image.asset(
                      "assets/images/kisspng-fruit-basket-clip-art-5aed5301d44408 1.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 58.0,
              left: 43,
              right: 185,
              bottom: 16,
            ),
            child: Text(
              "What is your firstname?",
              style: TextStyle(
                fontSize: 20,
                letterSpacing: -0.01,
                color: Color.fromRGBO(39, 33, 77, 1),
                fontWeight: FontWeight.w300,
                fontFamily: "OpenLight",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 42,
            ),
            child: FormFieldName(),
          ),
          ButtonDebut(
            text: "Start Ordering",
          ),
        ],
      ),
    );
  }
}
