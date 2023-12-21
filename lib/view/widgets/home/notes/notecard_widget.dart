// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:act_do/constant/colors.dart';
import 'package:act_do/model/notes_list.dart';
import 'package:act_do/view/widgets/home/notes/notepopupmenu_widget.dart';

import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final NoteList notelist ;
 NoteCard({
  super.key, 
  required this.notelist
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,top: 10,right: 15),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color:notelist.clr, 
          borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.star,color: notelist.isImportant ? Colors.yellow : ColorsApp.lightblackcolor  ,)),
                  NotePopUp(),],),
              ListTile(
                title: Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: Text("${notelist.title}",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
                subtitle: Text("${notelist.description}",
                  style: TextStyle(fontSize: 15),),),        
            ],),
      ),
      );
  }
}