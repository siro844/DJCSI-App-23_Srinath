import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8),),
                      elevation:10 ,
                      color: Colors.amberAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(icon,size: 35,color: Colors.white,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                 Text(title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              );
  }
}