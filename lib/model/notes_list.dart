
import 'package:act_do/constant/colors.dart';
import 'package:flutter/material.dart';

class NoteList {
  String ? id;
  String ? title;
  String ? description;
  Color clr ;
  bool isImportant;

  NoteList({
    required this.id,
    required this.title,
    required this.description,
    required this.clr,
    this.isImportant=false
  });

  static List<NoteList> listnote(){
    return [
      NoteList(id: "01", title: "password", description: "i need to write the important password to mot forget it later", clr: ColorsApp.bluecolor,isImportant: true),
      NoteList(id: "02", title: "birthday", description: "My mom birthday is comming in the 20 th march", clr: ColorsApp.greencolor,isImportant: true),
        NoteList(id: "03", title: "calcul", description: "I have to do a mathematic calculs", clr: ColorsApp.rosecolor),
    ];
  }


}