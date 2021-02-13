import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Models/OrderProduct.dart';

class OrderTile extends StatefulWidget {
  final OrderProduct order;
  OrderTile({this.order});
  _OrderTile createState() => _OrderTile();
}

class _OrderTile extends State<OrderTile> {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 16.0,
          ),
          child: Container(
            width: 65,
            height: 64,
            padding: EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
              right: 12.0,
              left: 13.0,
            ),
            decoration: BoxDecoration(
              color: widget.order.order.couleur, //  Color(0xFFFFFAEB),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              widget.order.order.imageCombo,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 55.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.order.order.nameCombo,
                style: TextStyle(
                  letterSpacing: -1,
                ),
              ),
              Text("${widget.order.nbPacks}packs"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 4.0,
          ),
          child: SvgPicture.asset("assets/images/VectorViolet.svg"),
        ),
        Text(widget.order.order.price),
      ],
    );
  }
}
