import 'dart:ffi';

import 'package:chat/models/person.dart';
import 'package:flutter/material.dart';

class PersonalChat extends StatelessWidget {
   PersonalChat({super.key,required this.person});

 Person person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 236, 211),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 97, 79),
          title: Row(
            children: [
              CircleAvatar(   
              backgroundImage: AssetImage(person.image!)),
               SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(person.name!, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 14),),
                 SizedBox(height: 4,),
                 Text("online", style: TextStyle(color: Colors.white,fontSize: 10)),
                ],
              )
            ],
          ),

          actions: [
            Icon(Icons.video_call),
            Icon(Icons.call),
            Icon(Icons.more_vert),
          ],
          
        
       ),

       body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SizedBox(height: 20,),
          Container(
             margin: EdgeInsets.only(left: 10),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Text("Hi, How are you?"),
          ),
            SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 160),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Color.fromARGB(255, 179, 225, 180)),
            child: Text("Hi, Programmer, Iam fine and well,..."),
          ),
          SizedBox(height: 20,),
          Container(
             margin: EdgeInsets.only(left: 10),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Text("Hi, How are you?"),
          ),
            SizedBox(height: 20,),  SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 160),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Color.fromARGB(255, 179, 225, 180)),
            child: Text("Hi, Programmer, Iam fine and well,..."),
          ),
           SizedBox(height: 20,),
          Container(
             margin: EdgeInsets.only(left: 10),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Text("Hi, How are you?"),
          ),
            SizedBox(height: 20,),  SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 160),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Color.fromARGB(255, 179, 225, 180)),
            child: Text("Hi, Programmer, Iam fine and well,..."),
          ),
           SizedBox(height: 20,),
          Container(
             margin: EdgeInsets.only(left: 10),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Colors.white),
            child: Text("Hi, How are you?"),
          ),
            SizedBox(height: 20,),  SizedBox(height: 20,),
           Container(
            margin: EdgeInsets.only(left: 160),
            width: 200,
            height: 50,
            decoration: BoxDecoration(color: Color.fromARGB(255, 179, 225, 180)),
            child: Text("Hi, Programmer, Iam fine and well,..."),
          ),
         
          Container(
            margin: EdgeInsets.all(20),
            height: 40,
            child: TextFormField(
             style: TextStyle(color: Colors.white),
             decoration: InputDecoration(
               filled: true,
               fillColor:Color.fromARGB(61, 255, 255, 255),
               hintText: "message",         
               hintStyle: TextStyle( color: Colors.grey),                   
                
               border:OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide( color: Colors.lightBlue, ),), 
                  
                  ), 
            ),
          ),


        ],
       ),
      
    );

  }
}