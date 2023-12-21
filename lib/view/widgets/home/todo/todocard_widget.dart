// ignore_for_file: prefer_const_constructors

//import 'package:act_do/constant/colors.dart';
//import 'package:act_do/view/widgets/home/notes/notepopupmenu_widget.dart';
import 'package:act_do/model/todo.dart';
import 'package:act_do/view/widgets/home/todo/todopopuomenu_widget.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
 final ToDo todo;
 const TodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 8,top: 10,right: 8),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          title: Text("${todo.todoText}",style: TextStyle(fontSize: 18),),
          trailing: TodoPop(),
        ),
      ),);
  }
}