//import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';


class Roundedbutton extends StatelessWidget {
   final String txt ;
   final Color color ;
   final Color txtcolor;
   final Function press;
   final double height;
   final double width;

 const Roundedbutton({super.key, required this.txt, required this.color, required this.txtcolor, required this.press, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
               onTap:(){press();},
              child: Container(
                alignment: Alignment.center,
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(15)),
                child: Text(txt,
                style: TextStyle(
                  color: txtcolor,
                  fontSize: 20)) ,
              ),
            );
  }
}