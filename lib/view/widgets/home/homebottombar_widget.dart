// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                 mainAxisSize: MainAxisSize.min,
                  children: [
                   Icon(Icons.home,size: 35,),
                  Text("home",style: TextStyle(fontSize: 16),)
                ],),)
              ],
            ),
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                 mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.search,size: 35),
                  Text("search",style: TextStyle(fontSize: 16),)
                ],),)
              ],
            ),
            Spacer(),
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                 mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.calendar_month,size: 35),
                  Text("calendar",style: TextStyle(fontSize: 16),)
                ],),)
              ],
            ),
            Row(
              children: [
                MaterialButton(onPressed: (){},child: Column(
                 mainAxisSize: MainAxisSize.min,
                  children: [
                  Icon(Icons.person,size: 35),
                  Text("profile",style: TextStyle(fontSize: 16),)
                ],),)
              ],
            ),
          ],
        ),
      );
  }
}