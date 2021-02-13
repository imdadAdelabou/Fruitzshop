import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Composant/AddToBasket.dart';
import 'package:fruitzshop/Models/Combo.dart';

class ProductPage extends StatefulWidget {
  final Combo combo;
  ProductPage({this.combo});
  _ProductPage createState() => _ProductPage();
}

class _ProductPage extends State<ProductPage> {
  int count = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 64,
                  right: 0,
                  left: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.chevron_left),
                          Text("Go back"),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Hero(
                    tag: widget.combo.id,
                    child: Image.asset(
                      widget.combo.imageCombo,
                      scale: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 33.0,
                      left: 25.0,
                    ),
                    child: Text(
                      widget.combo.nameCombo,
                      style: TextStyle(
                        fontSize: 32,
                        letterSpacing: -1,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF27214D),
                        fontFamily: "Noto",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 31.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 24.0, right: 24.0),
                          child: InkWell(
                            onTap: () {
                              if (count >= 2) {
                                setState(() {
                                  count -= 1;
                                });
                              }
                            },
                            child:
                                SvgPicture.asset("assets/images/Group 30.svg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 17.0),
                          child: Text(
                            "$count",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              letterSpacing: -1,
                              color: Color(0xFF27214D),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 119.0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (count >= 1) {
                                  setState(() {
                                    count += 1;
                                  });
                                }
                              });
                            },
                            child:
                                SvgPicture.asset("assets/images/Group 26.svg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: SvgPicture.asset(
                              "assets/images/VectorViolet.svg"),
                        ),
                        Text(
                          widget.combo.price,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            letterSpacing: -1,
                            color: Color(0xFF27214D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 32.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.0, bottom: 2.0),
                    child: Text(
                      "One Pack Contains:",
                      style: TextStyle(
                        fontFamily: "ubuntu",
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        letterSpacing: -1,
                        color: Color(0xFF27214D),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, bottom: 18.0),
                    child: SvgPicture.asset("assets/images/Line 7.svg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.0,
                      bottom: 20.0,
                    ),
                    child: Text(
                      "Red Quinoa, LIME, Honey, Blueberries,\nStrawberries, Mango, Fresh MInt."
                          .toUpperCase(),
                      style: TextStyle(
                        fontFamily: "SpectralSCItalic",
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        letterSpacing: -1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 14.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.0,
                      bottom: 30.0,
                    ),
                    child: Text(
                      "If you are looking for a new fruit salad to eat\ntoday, quinoa is the perfect brunch for you.\nmake",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60.0),
                          child: SvgPicture.asset("assets/images/Group 27.svg"),
                        ),
                        AddToBasket(combo: widget.combo),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
