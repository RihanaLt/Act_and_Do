// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';


class Introscreen extends StatelessWidget {
 final  List<Widget>  children;
  final Widget img ;

  const Introscreen({super.key,required this.img,required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(20),
            child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20,bottom: 30),
                    child: Card(
                      child: img,
                      elevation: 10,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),),))),

              Expanded(
               
                 
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: 
                      Column(
                         children: children,
                      ),
                   
                  ),
                )
            ],
           ),);
  }
}