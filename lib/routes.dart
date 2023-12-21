
import 'package:act_do/constant/approutes.dart';
import 'package:act_do/view/screens/auth/login_screen.dart';
import 'package:act_do/view/screens/auth/signup_screen.dart';
import 'package:act_do/view/screens/home/home_screen.dart';
import 'package:act_do/view/screens/home/note_screen.dart';
import 'package:act_do/view/screens/home/todo_screen.dart';
import 'package:act_do/view/screens/onboarding_screen.dart';
import 'package:act_do/view/screens/splash_screen.dart';


import 'package:flutter/material.dart';

Map<String,Widget Function(BuildContext)>  routes = {
   Approutes.spalshscreen : (context)=> const SplashScreen(),
   Approutes.onboardingscreen : (context) => const Onboardingscreen(),
   Approutes.loginscreen :(context) => const Login(),
   Approutes.signupscreen :(context) => const Signup(),
   Approutes.homescreen :  (context) => const Homepage() ,
   Approutes.notescreen :(context) => const Notescreen(),
   Approutes.todoscreen :(context) => const TodoScreen()
  
    
};