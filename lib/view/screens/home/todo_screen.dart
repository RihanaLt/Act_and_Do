// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:act_do/constant/colors.dart';
import 'package:act_do/model/todo.dart';
import 'package:act_do/view/widgets/auth/build_inputtext.dart';
import 'package:act_do/view/widgets/home/todo/todo_item.dart';
import 'package:act_do/view/widgets/rounded_button.dart';
//import 'package:act_do/view/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final todosList = ToDo.todoList();
   List<ToDo> _foundToDo = [];
  final _todoController = TextEditingController();

    @override
  void initState() {
    _foundToDo = todosList;
    super.initState();
  }

  void addTodoItem(String todo){
    setState(() {
      _foundToDo.add(ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(), 
        todoText: todo));
    });
    _todoController.clear();}

 void deleteTodoItem(String id){
  setState(() {
    _foundToDo.removeWhere((element) => element.id==id);
  });
 }

 void changeTodoItem (ToDo todo){
  setState(() {
    todo.isDone = ! todo.isDone;
  });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.whitecolor,
        centerTitle: true,
        title: Text("To do List",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:ColorsApp.darkblackcolor),),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back,color: ColorsApp.darkblackcolor,)),
      ),
      body: SafeArea(
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: ListView(
                  children: [
                     Container(
                      color: Colors.white,
                       child: Expanded(flex: 3,child: Column(children: [
                        //title 
                        BuildInputText(hintText: "Title",),SizedBox(height: 5,),
                        // add new to do
                          Row(children: [
                            Expanded(flex: 3,child: BuildInputText(hintText: " New todo item",cntrl:_todoController ,)),
                            Expanded(child: Roundedbutton(press: (){addTodoItem(_todoController.text);}, height: 30, width: 30,color: ColorsApp.orangecolor,txt: "Add",txtcolor: ColorsApp.whitecolor,))
                            ]),
                        ])),
                     ),
                 

                  // to do item list      
                  Expanded(flex: 6,child: SizedBox(
                    height: 380,
                    child: ListView(children: [
                      for(ToDo todo in _foundToDo.reversed) 
                          TodoItem(todo: todo,ondelete:deleteTodoItem,onchange:changeTodoItem),],),
                  ),),


                  // to do screen bottom
                  Expanded(flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.type_specimen,size: 28,)),
                             IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month,size: 28,)),
                             IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 28,)),]),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Roundedbutton(txt: "Back", color: ColorsApp.lightblackcolor, txtcolor: ColorsApp.whitecolor, press: (){}, height: 43, width: 140),
                            Roundedbutton(txt: "Save", color: ColorsApp.orangecolor, txtcolor: ColorsApp.whitecolor, press: (){}, height: 43, width: 140)],),
                                    ],),
                ),),
                      ],),),),),);}
}
