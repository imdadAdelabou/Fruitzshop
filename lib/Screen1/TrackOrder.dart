import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruitzshop/Composant/MyAppBar.dart';
import 'package:fruitzshop/Composant/TrackComponent.dart';

class TrackOrder extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Delivery Status"),
      body: Padding(
        padding: EdgeInsets.only(
          top: 40.0,
          left: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TrackComponent(
              width: 65,
              height: 64,
              colorComponent: Color(0xFFFFFAEB),
              imagePath: "assets/images/ordericone.png",
              title: Text(
                "Order Taken",
              ),
              iconeStatus: "assets/images/Group 48.svg",
              widthIcone: 35.0,
              heightIcone: 35.0,
              paddingRight: 160.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.5),
              child: SvgPicture.asset("assets/images/Line 10.svg"),
            ),
            TrackComponent(
              width: 65,
              height: 64,
              colorComponent: Color(0xFFF1EFF6),
              imagePath: "assets/images/68-512-removebg-preview.png",
              title: Text(
                "Order Is Being Prepared",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              iconeStatus: "assets/images/Group 48.svg",
              widthIcone: 35.0,
              heightIcone: 35.0,
              paddingRight: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.5),
              child: SvgPicture.asset("assets/images/Line 10.svg"),
            ),
            TrackComponent(
              width: 65,
              height: 64,
              colorComponent: Color(0xFFFEF0F0),
              imagePath:
                  "assets/images/delivery-man-riding-red-scooter-illustration_9845-14-removebg-preview.png",
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Is Being Delivered",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserat",
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    "Your delivery agent is coming",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                      fontFamily: "IBM",
                    ),
                  ),
                ],
              ),
              iconeStatus: "assets/images/Group 50.svg",
              widthIcone: 40.0,
              heightIcone: 40.0,
              paddingRight: 50.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 32.5,
                bottom: 3.0,
              ),
              child: SvgPicture.asset("assets/images/Line 13.svg"),
            ),
            Image.asset("assets/images/Rectangle 45.png"),
            Padding(
              padding: EdgeInsets.only(left: 32.5),
              child: SvgPicture.asset("assets/images/Line 10.svg"),
            ),
            TrackComponent(
              width: 65,
              height: 64,
              colorComponent: Color(0xFFF0FEF8),
              imagePath: "assets/images/Group 52.png",
              title: Text(
                "Order Received",
                style: TextStyle(
                  fontFamily: "PTS",
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
              iconeStatus: "assets/images/Group 53.svg",
              widthIcone: 40.0,
              heightIcone: 8.0,
              paddingRight: 130.0,
            ),
          ],
        ),
      ),
    );
  }
}
