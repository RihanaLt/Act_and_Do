// ignore_for_file: prefer_const_constructors

import 'package:act_do/constant/approutes.dart';
import 'package:flutter/material.dart';


class NotePopUp extends StatelessWidget {
  const NotePopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.more_horiz,size: 30,),
      itemBuilder: (context){
        return <PopupMenuEntry<int>>[
          PopupMenuItem(
           child: ListTile(
           title: Text("Edit",style: TextStyle(fontSize: 22),),
           trailing:IconButton(
              onPressed: (){
                    Navigator.of(context).pushNamed(Approutes.notescreen);},
              icon: Icon(Icons.edit,)) ,),),
            
            PopupMenuItem(
              child:  ListTile(
                title: Text("Delete",style: TextStyle(fontSize: 22,color: Colors.red)),
                trailing: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.delete,color: Colors.red,)),),)
                                      ];
                                    }
                                      
                                    
                                      
                                    ,)
                              ;
  }
}