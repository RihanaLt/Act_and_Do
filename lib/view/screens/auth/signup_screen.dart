// ignore_for_file: prefer_const_constructors

import 'package:act_do/constant/colors.dart';
import 'package:act_do/view/widgets/auth/border_button.dart';
import 'package:act_do/view/widgets/auth/build_inputpsw.dart';
import 'package:act_do/view/widgets/auth/build_inputtext.dart';
import 'package:act_do/view/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Let's get started !",
              style: TextStyle( fontSize: 34,fontWeight: FontWeight.w400,),
              textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Text("Create an account and start adding tasks and notes now ",
              style: TextStyle(fontSize: 22,letterSpacing: 0.3,),
              textAlign: TextAlign.center,),
              SizedBox(height: 15,),
        
              
              BuildInputText(
                prefixIcon: Icon(Icons.person,color: ColorsApp.orangecolor,),
                hintText: 'Username'),

              SizedBox(height: 5,),

                BuildInputText(
                  prefixIcon: Icon(Icons.mail,color: ColorsApp.orangecolor,),
                   hintText: 'Email ',
                   keyboardType: TextInputType.emailAddress, ),




        
              


             BuildInputPassword(hintText: "Password"),
        
              
        
              SizedBox(height: 5,),
        
              BuildInputPassword(hintText: "Confirm Password"),
              
              SizedBox(height: 20,),
        
        
        
              
              
               Roundedbutton(
                txt: "Sign up", 
                color: ColorsApp.orangecolor, 
                txtcolor: ColorsApp.whitecolor, 
                press: (){
        
                },height: 43,width: size.width*0.8),
        
                SizedBox(height: 30,),
               Row(
              children: [
                Container(height: 3, width: 111,color: const Color(0xFFa6a6a7),),
                const Spacer(flex: 10,),
                Text('Or continue with', style: TextStyle(fontSize: 17),),
                const Spacer(flex: 10,),
                Container(height: 3, width: 111,color: const Color(0xFFa6a6a7),),
              ],
            ),
        
             SizedBox(height: 20,),
        
             Borderbutton(txt: "Sign Up with Google"),
        
             SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already have account ?",style: TextStyle(fontSize: 17),),
                    SizedBox(width: 5,),
                    Text("Log in ",style: TextStyle(fontSize: 17,color: ColorsApp.orangecolor,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            
        
        
              
            ],
          ),
        ),
      ),
    );
  }
}