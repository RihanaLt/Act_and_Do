// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:act_do/constant/approutes.dart';
import 'package:act_do/constant/colors.dart';
import 'package:act_do/constant/fonts.dart';
import 'package:act_do/view/widgets/intro_widget.dart';
import 'package:act_do/view/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
                Introscreen(
            img:Image.asset("images/actdo1.jpg"),
            children: [
              Text("Discover how successful you will be by organising your ideas and notes",
              style: FontsApp.textstyle1,
              textAlign: TextAlign.center,) ,],),


           Introscreen(
            img: Image.asset("images/actdo2.jpg"),
            children: [
              Text("Today is your opportunity to build the tomorrow you want",
              style:  FontsApp.textstyle1,
              textAlign: TextAlign.center,)],),


          Introscreen(img: Image.asset("images/actdo3.jpg"),
          children: [
            Text("Find the perfect way to organise your ideas and journey ",
            style:  FontsApp.textstyle1,
            textAlign: TextAlign.center),SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("Join us on",style:  FontsApp.textstyle1,textAlign: TextAlign.center),SizedBox(width: 8,),
              Text("Act",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.orangecolor,),),SizedBox(width: 3,),
              Text("&",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),),SizedBox(width: 3,),
              Text("Do",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),)             
           ],),

           SizedBox(height: 24,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Roundedbutton(
              txt: "Signup", 
              color: ColorsApp.orangecolor, 
              txtcolor: ColorsApp.whitecolor, 
              press: (){Navigator.of(context).pushReplacementNamed(Approutes.signupscreen);},height: 43,width: 140),
            Roundedbutton(
              txt: "Login", 
              color: ColorsApp.darkblackcolor, 
              txtcolor: ColorsApp.whitecolor, 
              press: (){
                Navigator.of(context).pushReplacementNamed(Approutes.loginscreen);},height: 43,width: 140)
           ],) 
                           
                           ],),


             
              
              
            ],
          ),

         Container(
          padding: EdgeInsets.only(right: 100),
          alignment: Alignment(0, 0.90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
               InkWell(
                onTap: (){
                  _controller.jumpToPage(2);
                },
                  child: Text("Skip",style: TextStyle(fontSize: 23),),
                ),
              SmoothPageIndicator(
                controller: _controller, 
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: ColorsApp.orangecolor,
                  dotColor: ColorsApp.lightblackcolor
                ),
                ),
            ],
          )) ,
        ],
      ),
    );
  }
}