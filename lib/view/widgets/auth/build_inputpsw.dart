// ignore_for_file: prefer_const_constructors

import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';

class BuildInputPassword extends StatefulWidget {
 final String hintText;
  const BuildInputPassword({super.key, required this.hintText,  });

  @override
  State<BuildInputPassword> createState() => _BuildInputPasswordState();
}

class _BuildInputPasswordState extends State<BuildInputPassword> {
   bool obscure = true;

   late String text;
   @override
  void initState() {
    super.initState();
    text = widget.hintText;
  }
   
     
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(15),
              child: TextFormField(
                obscureText: obscure ,
                cursorColor: ColorsApp.orangecolor,
                //keyboardType: keyboardType,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock,color: ColorsApp.orangecolor,),
                  suffixIcon: IconButton(
                    onPressed: (){
                     setState(() {
                       obscure = !obscure;
                     });

                    }, 
                    icon: obscure ?
                     Icon(Icons.visibility_off,color: ColorsApp.orangecolor,)
                     : Icon(Icons.visibility,color: ColorsApp.orangecolor,),) ,
                  hintText: text,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ColorsApp.orangecolor,)
                  )
                  ),
              ),
            );
  }
}