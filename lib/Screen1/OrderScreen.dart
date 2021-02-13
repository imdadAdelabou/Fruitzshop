import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Composant/FormFieldOrder.dart';
import 'package:fruitzshop/Composant/MyAppBar.dart';
import 'package:fruitzshop/Composant/OrderTile.dart';
import 'package:fruitzshop/Models/Combo.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';
import 'package:mobx/mobx.dart';
import '../StoreMobX/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../StoreMobX/orderLists.dart';

final counter = Counter();

class OrderScreen extends StatefulWidget {
  final OrderLists orderLists;
  OrderScreen({this.orderLists});
  _OrderScreen createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  /*var orders = new List<OrderProduct>.filled(3, null, growable: true);
  void initState() {
    super.initState();
    orders = orderLists.orderLists;
  }*/
  double maxWidth = 0.0;
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
            /*Observer(
              builder: (_) => Container(
                height: 600,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: widget.orderLists.orderLists.isNotEmpty
                      ? (context, index) {
                          var orders = widget.orderLists.orderLists;
                          List<OrderProduct> newOrders = [];
                          orders.forEach((value) {
                            if (value != null) newOrders.add(value);
                          });
                          var order = newOrders[index];
                          print(newOrders.toString());
                          return newOrders.length != 1
                              ? Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.0, bottom: 24.0),
                                      child: OrderTile(
                                        order: order,
                                      ),
                                    ),
                                    index != newOrders.length - 1
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 32.0,
                                            ),
                                            child: Divider(),
                                          )
                                        : Opacity(
                                            opacity: 0.0,
                                            child: Text("ok"),
                                          ),
                                  ],
                                )
                              : OrderTile(
                                  order: order,
                                );
                        }
                      : Text("List is empty"),
                ),
              ),
            ),*/
            /* Spacer(),
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
            ),*/
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
                              onPressed: () {},
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
}
