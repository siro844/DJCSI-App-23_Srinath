import 'package:flutter/material.dart';
import 'package:task/categories.dart';
import 'package:task/item.dart';
import 'package:task/todo.dart';

class Notes extends StatefulWidget {
  Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}


class _NotesState extends State<Notes> {
  final todoList=ToDo.todolist();
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  const Color.fromRGBO(231, 231, 231, 1),
      appBar: AppBar(
        backgroundColor:  const Color.fromRGBO(231, 231, 231, 1),
        elevation: 0,
        automaticallyImplyLeading: false,
       title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const Icon(Icons.menu,size: 30,color: Colors.black,),
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/avatar.jpg'),
              ),
            )
          ],
        ),
      ),
//notes part + quote if I add



      body: SingleChildScrollView(
        child: Container(
          child: Column(
              children: [
                Center(
                  child: Container(
                    height: 90,
                    width: 300,
                    color: Colors.amber,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(' Manage your \n time well',style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          ClipRRect(
                            child: Image.asset('assets/images/note.jpg'),
                          )
                        ],
                      ),
                    
                  ),
                ),
        
                const SizedBox(height: 25),
              //Categories
                const Align(
                  
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text('Categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono'
                    ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Categories(icon:Icons.work ,title: 'Work',),
                    Categories(icon:Icons.person,title: 'Personal',),
                    Categories(icon: Icons.shopping_bag, title: 'Shopping',),
                    Categories(icon: Icons.health_and_safety, title: 'Health',),
                  ],
                ),
                 const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Text('Your Tasks:' ,
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                            ),
                            ),

                       for(ToDo toDo in todoList)
                        Item(todo: toDo), 
                Container(
                  margin: EdgeInsets.only(bottom: 25,left: 20,right: 20),
                  child:  TextField(
                    onSubmitted: (String tasks){
                          setState(() {
                              ToDo input =ToDo(text: tasks);
                              todoList.add(input);
                              
                          });
                    },
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amber,width:1)),
                      hintText: 'Add new task',
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular( 10)))
                    ),
                  ),
                  
                )
        
              ],
              
        
          ),
        ),
      ),
      
    );
  }
}