import 'package:flutter/material.dart';
import 'package:toku_app/screens/number_page.dart';
class category extends StatelessWidget {
   category(this.text , this.color , {this.onTap});
    String? text;
    Color? color;
    Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(
          text!
          ,style: TextStyle(color: Colors.white ,fontSize: 18),
        ),
      ),
    );
  }
}