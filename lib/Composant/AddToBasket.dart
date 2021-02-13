import 'package:flutter/material.dart';
import 'package:fruitzshop/Models/Combo.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';
import 'package:fruitzshop/Screen1/OrderScreen.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../StoreMobX/orderLists.dart';

final orderLists = OrderLists();

class AddToBasket extends StatelessWidget {
  final Combo combo;
  AddToBasket({this.combo});
  Widget build(BuildContext context) {
    return Container(
      width: 219,
      height: 56,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color(0xFFFFA451),
        onPressed: () {
          orderLists.addOrder(
            OrderProduct(
              order: combo,
              nbPacks: 2,
            ),
          );
          print(orderLists.orderLists.toString());
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => OrderScreen(
                      orderLists: orderLists,
                    )),
          );
        },
        child: Text(
          "Add to basket",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
