import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Composant/GridCombo.dart';
import 'package:fruitzshop/Composant/SearchFruit.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height * .1) - 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                  ),
                  child: SvgPicture.asset("assets/images/Group.svg"),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 32.0),
                  child: SvgPicture.asset("assets/images/Vector.svg"),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                "Mon panier",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF27214D),
                  fontSize: 10,
                  fontFamily: "Roboto",
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0, top: 24.0),
            child: Row(
              children: [
                Text(
                  "Bonjour Tony,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: -1,
                    fontFamily: "Lato",
                    color: Color(0xFF27214D),
                  ),
                ),
                Text(
                  "Quel combo de salade",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: -1,
                    color: Color(0xFF27214D),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0, right: 94, bottom: 24.0),
            child: Text(
              "de fruits voulez-vous aujourd'hui?",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: -1,
                color: Color(0xFF27214D),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 66, left: 21, bottom: 40),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 56,
                    child: SearchFruit(),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width - 70,
                  top: 20,
                  child: SvgPicture.asset("assets/images/Group 6.svg"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 136,
              bottom: 24,
            ),
            child: Text(
              "Combo recommandé",
              style: TextStyle(
                fontFamily: "IBMTHIN",
                fontWeight: FontWeight.bold,
                fontSize: 24,
                letterSpacing: -1,
                color: Color(0xFF27214D),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: GridCombo(
              imageCombo:
                  "assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png",
              titleCombo: "Honey lime combo",
              fontFamily: "Spectral",
              weight: FontWeight.w600,
              size: 16,
              letterSpacing: -1,
              couleur: Color(0xFF27214D),
              price: "2.000",
            ),
          ),
        ],
      ),
    );
  }
}
