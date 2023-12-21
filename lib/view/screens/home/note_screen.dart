// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables


import 'package:act_do/constant/colors.dart';
import 'package:act_do/view/widgets/auth/build_inputtext.dart';
import 'package:act_do/view/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class Notescreen extends StatelessWidget {
  const Notescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List clr = [
      ColorsApp.bluecolor,
      ColorsApp.greencolor,
      ColorsApp.purplecolor,
      ColorsApp.lightorangecolor,
      ColorsApp.rosecolor,
      ColorsApp.yellowcolor];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Note",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: ColorsApp.darkblackcolor),),
          elevation: 0,
        backgroundColor: ColorsApp.whitecolor,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: ColorsApp.darkblackcolor,)),
      ),
      body: SafeArea(
          child: Container(
            height: 550,
            margin: EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 8),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child:
                   Padding( 
                    padding: const EdgeInsets.all(10.0),
                     child: Column(
                      children: [
                         BuildInputText(hintText: "Title"),
                        SizedBox(height: 15,),
                        BuildInputText(hintText: "Description"),SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.type_specimen,size: 28,)),
                         IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month,size: 28,)),
                         IconButton(onPressed: (){}, icon: Icon(Icons.attachment,size: 28,)),
                         IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 28,)),
                         ],),
                         SizedBox(height: 20,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            clr.length, (index) => Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: InkWell(
                               onTap: (){},
                               child: Container(
                                 height: 30,
                                 width: 30,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                  color: clr[index]),
                                   ),),
                            ) ),
                        ),
                         SizedBox(height: 70,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Roundedbutton(
                              txt: "Back", color: ColorsApp.lightblackcolor, txtcolor: ColorsApp.whitecolor, press: (){}, height: 43, width: 140),

                            Roundedbutton(
                              txt: "Save", color: ColorsApp.orangecolor, txtcolor: ColorsApp.whitecolor, press: (){}, height: 43, width: 140)
                          ],
                         ),
                                   
                      ],
                                     ),
                   ),
                )
              
              
              ),
          ),
    );
  }
}