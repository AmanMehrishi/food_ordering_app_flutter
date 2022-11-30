import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_constants.dart';






class AddButtonWidget extends StatelessWidget {
  AddButtonWidget({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xFF76D1B2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Icon(
        Icons.add,
        color: ColorConstants.kWhiteColor,
        size: 20,
      ),
    );
  }
}