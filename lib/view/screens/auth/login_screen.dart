// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'package:act_do/constant/colors.dart';
//import 'package:act_do/constant/fonts.dart';
import 'package:act_do/constant/colors.dart';
import 'package:act_do/view/widgets/auth/border_button.dart';
import 'package:act_do/view/widgets/auth/build_inputpsw.dart';
import 'package:act_do/view/widgets/auth/build_inputtext.dart';
import 'package:act_do/view/widgets/rounded_button.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
   bool isChacked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80,horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Welcome Back !",
              style: TextStyle( fontSize: 34,fontWeight: FontWeight.w400,),
              textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Text("Sign in to access to your daily tasks and personal notes",
              style: TextStyle(fontSize: 22,letterSpacing: 0.3,),
              textAlign: TextAlign.center,),
              SizedBox(height: 30,),
        
              BuildInputText(
                prefixIcon: Icon(Icons.mail,color: ColorsApp.orangecolor,), 
                hintText: 'Email ',
                keyboardType:TextInputType.emailAddress,
                ),
        
              SizedBox(height: 10,),


               BuildInputPassword(hintText: "Password"),

              
              SizedBox(height: 5,),
        
        
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Text("Forget Password ?",style: TextStyle(fontSize: 17),),
                    ),
                  ],
                ),
              ),
        
              Row(
                children: [
                  Checkbox(
                    activeColor: ColorsApp.orangecolor,
                    value: isChacked, 
                    onChanged: (value) {
                    setState(() {
                      isChacked = value!;
                    });
                  },),
                  Text("Keep me log in",style: TextStyle(fontSize: 17),)
                ],
              ),
              SizedBox(height: 20,),
             
               Roundedbutton(
                txt: "Log in", 
                color: ColorsApp.orangecolor, 
                txtcolor: ColorsApp.whitecolor, 
                press: (){
        
                },height: 43,width: size.width*0.8),

             SizedBox(height: 50,),
             Row(
            children: [
              Container(height: 3, width: 111,color: const Color(0xFFa6a6a7),),
              const Spacer(flex: 10,),
              Text('Or continue with', style: TextStyle(fontSize: 17),),
              const Spacer(flex: 10,),
              Container(height: 3, width: 111,color: const Color(0xFFa6a6a7),),
            ],
          ),

           SizedBox(height: 30,),

           Borderbutton(txt: "Log in with Google"),

           Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do not have account ?",style: TextStyle(fontSize: 17),),
                    SizedBox(width: 5,),
                    Text("Sign up ",style: TextStyle(fontSize: 17,color: ColorsApp.orangecolor,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
               SizedBox(height: 10,),
        
              
            ],
          ),
        ),
      ),
    );
  }
}
