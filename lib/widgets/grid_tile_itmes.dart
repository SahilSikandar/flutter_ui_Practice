import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:ui_practice/styles/text_style.dart';

class GridTileItems extends StatelessWidget {
  String imgUrl;
  String price;
  String name;
  final color;
  void Function()? onPressed;
  GridTileItems(
      {required this.color,
      required this.imgUrl,
      required this.name,
      required this.price,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: color[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imgUrl,
            height: 70,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Text(
            name,
            style: GoogleFonts.notoSerif(fontWeight: FontWeight.bold),
          ),
          // SizedBox(
          //   height: 4,
          // ),
          MaterialButton(
            onPressed: onPressed,
            color: color,
            child: Text(
              '\$$price',
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
