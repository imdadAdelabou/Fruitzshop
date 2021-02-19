import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrackComponent extends StatelessWidget {
  final double width;
  final double height;
  final Color colorComponent;
  final Widget title;
  final String imagePath;
  final String iconeStatus;
  final double widthIcone;
  final double heightIcone;
  final double paddingRight;
  TrackComponent({
    this.width,
    this.height,
    this.colorComponent,
    this.title,
    this.imagePath,
    this.iconeStatus,
    this.widthIcone,
    this.heightIcone,
    this.paddingRight,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: colorComponent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Image.asset(imagePath),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: paddingRight,
            ),
            child: title,
          ),
          Container(
            width: widthIcone,
            height: heightIcone,
            child: SvgPicture.asset(iconeStatus),
          ),
        ],
      ),
    );
  }
}
