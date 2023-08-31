import 'package:flutter/material.dart';

import 'package:task/todo.dart';

class Item extends StatefulWidget {
  final ToDo todo;
  const Item({super.key, required this.todo});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final todoList=ToDo.todolist();

 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          onTap: () {
             setState(() {
             widget.todo.isDone=!widget.todo.isDone;
            });
            
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),),
          tileColor: const Color.fromRGBO(244, 196, 48, 1),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
          leading: GestureDetector(
            onTap: (){
              setState(() {
             widget.todo.isDone=!widget.todo.isDone;
            });
            },
            child: Icon( widget.todo.isDone?Icons.check_box:Icons.check_box_outline_blank,
            color: Colors.grey[700],
            ),
          ),
          title:  Text(widget.todo.text!,
          style:  TextStyle(fontSize: 16,
          fontWeight:FontWeight.w500,
          decoration: widget.todo.isDone? TextDecoration.lineThrough:null,
          ),),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
        
            ),
            child: IconButton(
              onPressed:(){
             
              },
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              
              
              ),
          ),
        ),
      ),
    );
  }
}