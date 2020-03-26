import 'package:flutter/material.dart';
class Category extends StatelessWidget {
  final Color bodyColor;
  final Color textColor;
  final String categoryText;
  Category({this.bodyColor, this.textColor, this.categoryText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: bodyColor,
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Text(
        categoryText,
        style: TextStyle(
            fontSize: 15.0,
            fontFamily: "Gilroy",
            fontWeight: FontWeight.w600,
            color: textColor),
      ),
    );
  }
}