// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_field, prefer_final_fields

//import 'package:act_do/constant/approutes.dart';
import 'package:act_do/constant/approutes.dart';
import 'package:act_do/constant/colors.dart';
import 'package:act_do/model/notes_list.dart';
import 'package:act_do/model/todo.dart';

import 'package:act_do/view/widgets/home/homebottombar_widget.dart';
import 'package:act_do/view/widgets/home/notes/notecard_widget.dart';
import 'package:act_do/view/widgets/home/todo/todocard_widget.dart';


import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

 final notelst = NoteList.listnote();
 List<NoteList> _foundNotes = [];

 final todoList = ToDo.todoList();
   List<ToDo> _foundToDo = [];


 @override
  void initState() {
    super.initState();
    _foundNotes = notelst;
    _foundToDo = todoList;

  }


 





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Act",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.orangecolor,),),SizedBox(width: 3,),
              Text("&",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),),SizedBox(width: 3,),
              Text("Do",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,color: ColorsApp.darkblackcolor),)
            ],
          ),
        elevation: 0,
        backgroundColor: ColorsApp.whitecolor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.logout,color: ColorsApp.orangecolor,size: 30),
          ),
        ],
      ),
      //Add Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addHomeButton(context);
        },
        backgroundColor: ColorsApp.orangecolor,
        child: Icon(Icons.add),
        ),
      //Bottom navigation bar
      bottomNavigationBar:  HomeBottomBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: SafeArea(
          
          // Notes
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notes",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(fontSize: 18,color: ColorsApp.lightblackcolor),)),
                ],
              ),
              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                   for(NoteList notelst in _foundNotes.reversed)
                     NoteCard(notelist: notelst)
                  ],
                ),
              ),
            // SizedBox(
            //    height: 180 ,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 3,
            //     itemBuilder: (BuildContext context, int index) { 
            //       return NoteCard(
            //         title: notesList[index][0],
            //         subTitle: notesList[index][1],
            //         isimportant: notesList[index][2],
            //         colorback: notesList[index][3],); },
                
            //   ),
            // ),
            //To Do 
             SizedBox(height: 10,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("To Do",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(fontSize: 18,color: ColorsApp.lightblackcolor),)),
                  ],
                ),
             
             //SizedBox(height: 10,),
            
              //  SizedBox(
              //   height: 400,
              //   child: ListView(
              //     scrollDirection: Axis.vertical,
              //     children: [
              //       for(ToDo todo in _foundToDo.reversed) 
              //             TodoCard(title: todo.todoText),
              //     ],
              //   ),
              //  ),

               SizedBox(
                height: 400 ,
                 child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: todoList.length,
                  itemBuilder: (BuildContext context, int index) { 
                    return TodoCard(
                      todo: _foundToDo[index],
                    ); },
                  
                             ),
               ),
         
             
           ]),
         

        ),
      ) ,
    );
  }

  Future<dynamic> addHomeButton(BuildContext context) {
    return showDialog(
          context: context, 
          builder: ((context) {
            return AlertDialog(
                contentPadding: EdgeInsets.all(5),
                shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),),
              content: SizedBox(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(child: ListTile(
                      onTap:() {
                        Navigator.of(context).pushNamed(Approutes.notescreen);
                      },
                      title: Text("Add Note",style: TextStyle(fontSize: 22,),),
                      trailing: Icon(Icons.add,color: ColorsApp.orangecolor,),
                    ),),
                     Card(child: ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed(Approutes.todoscreen);
                      },
                      title: Text("Add todo",style: TextStyle(fontSize: 22),),
                      trailing: Icon(Icons.add,color: ColorsApp.orangecolor,),
                    ),)
                  ],
                ),
              ),
            );
          }));
  }
}