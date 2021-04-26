import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Composant/ButtonCompleteOrder.dart';
import 'package:fruitzshop/Composant/CardFormField.dart';
import 'package:fruitzshop/Composant/CardFormatter.dart';
import 'package:fruitzshop/Composant/FormFieldOrder.dart';
import 'package:fruitzshop/Composant/MyAppBar.dart';
import 'package:fruitzshop/Composant/OrderTile.dart';
import 'package:fruitzshop/Models/Combo.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';

class CardColumn extends StatelessWidget {
  final String textCard;
  final String myhinText;
  final List<TextInputFormatter> listInput;
  CardColumn({
    this.textCard,
    this.myhinText,
    this.listInput,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 16.0,
          ),
          child: Text(
            textCard,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 20.0,
              fontFamily: "PTS",
              color: Color(0xFF27214D),
            ),
          ),
        ),
        CardOrder(
          myhinText: myhinText,
          listInput: listInput,
        ),
      ],
    );
  }
}

class CardOrder extends StatelessWidget {
  final String myhinText;
  final List<TextInputFormatter> listInput;
  CardOrder({
    this.myhinText,
    this.listInput,
  });
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      height: 56,
      child: TextFormField(
        inputFormatters: listInput ?? null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF3F1F1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          hintText: myhinText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color(0xFFC2BDBD),
          ),
        ),
      ),
    );
  }
}

class OrderScreen extends StatefulWidget {
  _OrderScreen createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  double maxWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    maxWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: MyAppBar(title: "My basket"),
      body: Padding(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24.0,
              ),
              child: OrderTile(
                order: OrderProduct(
                  order: Combo(
                    nameCombo: "Quinoa Fruit Salad",
                    imageCombo:
                        "assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png",
                    couleur: Color(0xFFFFFAEB),
                    price: "20,000",
                  ),
                  nbPacks: 3,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                bottom: 56.0,
                right: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 120.0,
                        ),
                        child: Text(
                          "Total",
                          style: TextStyle(
                            fontFamily: "RobotoSlab",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 5.0,
                            ),
                            child: SvgPicture.asset(
                                "assets/images/VectorViolet.svg"),
                          ),
                          Text(
                            "20,000",
                            style: TextStyle(
                              fontFamily: "Spectral-Sc",
                              fontWeight: FontWeight.w200,
                              fontSize: 24.0,
                              letterSpacing: -1,
                              color: Color(0xFF27214D),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 199,
                    height: 56,
                    child: RaisedButton(
                      color: Color(0xFFFFA451),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        _settingModalBottomSheet(context);
                      },
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -70,
                left: (MediaQuery.of(context).size.width * .4) + 10,
                child: SvgPicture.asset("assets/images/Cancel.svg"),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 43.0,
                        left: 24.0,
                        bottom: 16.0,
                      ),
                      child: Text(
                        "Delivery address",
                        style: TextStyle(
                          fontFamily: "PTS",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xFF27214D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        bottom: 27.0,
                      ),
                      child: FormFieldOrder(
                        myhinText: "10th avenue, Lekki, Lagos State",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        bottom: 16.0,
                      ),
                      child: Text(
                        "Number we can call",
                        style: TextStyle(
                          fontFamily: "PTS",
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Color(0xFF27214D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        bottom: 50.0,
                      ),
                      child: FormFieldOrder(
                        listInput: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        myhinText: "09090605708",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.0,
                        bottom: 50.0,
                        right: 24.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Color(0xFFFFA451),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Pay on delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFFFFA451),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 160,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Color(0xFFFFA451),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                _cardBottomSheet();
                              },
                              child: Text(
                                "Pay with card".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFFFFA451),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _cardBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -70,
                    left: (MediaQuery.of(context).size.width * .4) + 10,
                    child: SvgPicture.asset("assets/images/Cancel.svg"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.0,
                          top: 42,
                          bottom: 16.0,
                        ),
                        child: Text(
                          "Card Holders Name",
                          style: TextStyle(
                            fontFamily: "PTS",
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Color(0xFF27214D),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.0,
                          bottom: 23.0,
                        ),
                        child: FormFieldOrder(
                          myhinText: "Adolphus Chris",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.0,
                          bottom: 16.0,
                        ),
                        child: Text(
                          "Card Number",
                          style: TextStyle(
                            fontFamily: "Spectral-Sc",
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                            color: Color(0xFF27214D),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24.0,
                          bottom: 27.0,
                        ),
                        child: CardFormField(
                          listInput: [
                            CardFormatter(
                              mask: "1234 5678 9012 1314",
                              separator: " ",
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 32.0,
                          right: 24.0,
                          bottom: 24.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardColumn(
                              myhinText: "10/30",
                              textCard: "Date",
                              listInput: [
                                CardFormatter(
                                  mask: "10/30",
                                  separator: "/",
                                ),
                              ],
                            ),
                            CardColumn(
                              myhinText: "123",
                              textCard: "CCV",
                              listInput: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(3),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ButtonCompleteOrder(),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
