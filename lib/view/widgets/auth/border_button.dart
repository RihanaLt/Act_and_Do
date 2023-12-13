// ignore_for_file: prefer_const_constructors

import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Borderbutton extends StatelessWidget {
  final String txt;
  const Borderbutton({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
            onTap: () {},
             child: Container(
              height: 50,
             width: size.width*0.85,
              decoration: BoxDecoration(border: Border.all(color :Color(0xFFa6a6a7),)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SvgPicture.asset("images/google.svg",colorFilter:ColorFilter.mode(ColorsApp.darkblackcolor, BlendMode.srcIn)),
                SizedBox(width: 10,),
                 Text(txt,style: TextStyle(fontSize: 17),)
                ],
              ),
             ),
           );
  }
}