import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/item_add_remove_widget.dart';



import 'package:google_fonts/google_fonts.dart';


class SelectedItemWidget extends StatelessWidget {
  final String itemImg;
  final String itemName;
  final String itemAmount;

  const SelectedItemWidget({
    required Key? key,
    required this.itemImg,
    required this.itemName,
    required this.itemAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      itemImg,
                    ),
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itemName,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "\$",
                      style: GoogleFonts.faustina(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      itemAmount,
                      style: GoogleFonts.faustina(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        ItemAddRemoveWidget()
      ],
    );
  }
}