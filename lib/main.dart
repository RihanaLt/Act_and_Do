// ignore_for_file: prefer_const_constructors

import 'package:act_do/routes.dart';
import 'package:act_do/view/screens/auth/Login_screen.dart';
import 'package:act_do/view/screens/auth/signup_screen.dart';
import 'package:act_do/view/screens/splash_screen.dart';
import 'package:act_do/view/screens/home_screen.dart';
import 'package:act_do/view/screens/onboarding_screen.dart';




import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
       debugShowCheckedModeBanner: false,

     routes: routes,
      home: SplashScreen(),
    );
  }
}

