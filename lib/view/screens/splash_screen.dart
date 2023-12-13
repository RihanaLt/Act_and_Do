// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:act_do/constant/approutes.dart';
import 'package:act_do/constant/colors.dart';
import 'package:act_do/view/widgets/logo_widget.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
     Navigator.of(context).pushReplacementNamed(Approutes.onboardingscreen);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.whitecolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logowidget(),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Act",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.orangecolor,),),SizedBox(width: 3,),
              Text("&",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),),SizedBox(width: 3,),
              Text("Do",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),)
            ],
          ),
        ],
      ),
    );
  }
}