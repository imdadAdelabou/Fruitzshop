import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushNamed("/Description");
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: SvgPicture.asset("assets/images/surface.svg"),
              ),
              Container(
                width: 184,
                height: 45,
                padding: EdgeInsets.only(
                  bottom: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 164, 81, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Fruit Hub",
                    style: TextStyle(
                      fontSize: 24.0,
                      letterSpacing: -0.02,
                      fontFamily: "BadScript",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
