// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';

class Logowidget extends StatelessWidget {
  const Logowidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                  Icon(Icons.check_circle,color: ColorsApp.orangecolor,),
                  SizedBox(height: 5,),
                 Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  SizedBox(height: 5,),
                   Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
              ],
            ),
            SizedBox(width: 5,),
            Container(
              margin: EdgeInsets.only(top: 8 ),
              child: Column(
                children: [
                   Container(
                      height: 12,
                      width: 50,
                      decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(height: 8,),
                     Container(
                      height: 12,
                      width: 50,
                      decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(height: 8,),
                     Container(
                      height: 12,
                      width: 50,
                      decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
    























    /*
     Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //alignment: Alignment.topCenter,
                    child: Icon(Icons.check_circle,color: ColorsApp.orangecolor,size: 20,),
                    //height: 12,
                    //width: 12,
                    decoration: BoxDecoration(
                      //color:ColorsApp.lightblackcolor,
                      borderRadius: BorderRadius.all(Radius.circular(30))  ),
                    ),
                  SizedBox(width: 5,),
                  Container(
                    height: 12,
                    width: 50,
                    decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],
              ), SizedBox(height: 8,),
              Row(  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(color:ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))  ),
                    ),
                  SizedBox(width: 11,),
                  Container(
                    height: 12,
                    width: 50,
                    decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],),SizedBox(height: 8,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(color:ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(30))  ),
                    ),
                  SizedBox(width: 8,),
                  Container(
                    height: 12,
                    width: 50,
                    decoration: BoxDecoration(color: ColorsApp.lightblackcolor,borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ],)
     */
    
    
    }}