import 'package:flutter/material.dart';
import 'package:fruitzshop/Models/Combo.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';
import 'package:fruitzshop/Screen1/OrderScreen.dart';
import 'package:fruitzshop/providers/basket_lists.dart';
import 'package:provider/provider.dart';

class AddToBasket extends StatelessWidget {
  final Function() action;
  AddToBasket({this.action});
  Widget build(BuildContext context) {
    return Container(
      width: 219,
      height: 56,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Color(0xFFFFA451),
        onPressed: action,
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
