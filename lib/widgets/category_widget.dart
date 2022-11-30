import 'package:flutter/material.dart';


class CategoryWidget extends StatelessWidget {
  final String catImg;
  final Color backColor;
  final Color imgColor;
  final double height;
  final double width;
  final double iconHeight;

   CategoryWidget({
    required Key key,
    required this.catImg,
    required this.backColor,
    required this.imgColor,
    required this.height,
    required this.width,
    required this.iconHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: backColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Image.asset(
            catImg,
            height: iconHeight,
            color: imgColor,
          ),
        ),
      ),
    );
  }
}