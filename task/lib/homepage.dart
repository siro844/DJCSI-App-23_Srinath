import 'package:flutter/material.dart';
import 'package:task/notes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color.fromRGBO(231, 231, 231, 1),
      body: Column(

        children: [
          const SizedBox(height: 20,),
        const SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'FocusList',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 35,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                
              ),
              ),
          ),
          ),

          const SizedBox(
            height: 500,
            width: 300,
            child: Center(
              child: Image(image: AssetImage('assets/images/logotask.png'),
              ),
            ),
          ),
          const Text('Welcome to FocusList',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('FocusList will help you to stay\n    organised and perform your  \n       tasks much faster'),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 60,
            width: 250,
            child: ElevatedButton(
             
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(builder:(context){
                  return  Notes();
                }));
            },
                   style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber),
              elevation: MaterialStatePropertyAll(20),
                
               
                ),
          
            child:const Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,fontFamily: 'Poppins'),) ,
            
            ),
          ),
        ],
      ),

    );
  }
}