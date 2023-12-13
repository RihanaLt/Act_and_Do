// ignore_for_file: prefer_const_constructors

import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';


class BuildInputText extends StatelessWidget {
  final bool obscure ;
  final TextInputType? keyboardType ;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  
  const BuildInputText({
    super.key, 
     this.obscure = true, 
    this.keyboardType, 
    required this.prefixIcon, 
     this.suffixIcon, 
    required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                obscureText: obscure ,
                cursorColor: ColorsApp.orangecolor,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  suffixIcon:suffixIcon ,
                  hintText: hintText,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsApp.orangecolor,)
                  )
                  ),
              ),
            );
  }
}