// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Act",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.orangecolor,),),SizedBox(width: 3,),
              Text("&",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),),SizedBox(width: 3,),
              Text("Do",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),)
            ],
          ),
        elevation: 0,
        backgroundColor: ColorsApp.whitecolor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.logout,color: ColorsApp.orangecolor,size: 25),
          ),
        ],
      ),

    );
  }
}