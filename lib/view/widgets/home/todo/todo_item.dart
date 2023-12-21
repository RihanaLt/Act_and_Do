

// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:act_do/constant/colors.dart';
import 'package:act_do/model/todo.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final ondelete;
  final onchange;
  
  const TodoItem({super.key, 
  required this.todo, 
  this.ondelete, 
  this.onchange});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.all(8),
            child: 
             ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),),
                  onTap: () {
                    onchange(todo);
                  },
                  trailing: IconButton(onPressed: (){
                     ondelete(todo.id);
                    }, icon:Icon(Icons.delete,color: ColorsApp.darkblackcolor,)),
                  leading: todo.isDone ? Icon(Icons.check_circle,color: ColorsApp.orangecolor,) :Icon(Icons.circle_outlined,color: ColorsApp.orangecolor,) ,
                    title: Text("${todo.todoText}",style: TextStyle(fontSize: 18,color: ColorsApp.darkblackcolor,decoration: todo.isDone ? TextDecoration.lineThrough : null,)),
                    tileColor: ColorsApp.greycolor,)


             
            
            
            
            
            
         
                    
                    
                    
                    
    );
  }
}