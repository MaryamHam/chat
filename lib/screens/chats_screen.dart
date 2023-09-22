import 'package:chat/models/person.dart';
import 'package:chat/screens/chat_item_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
   ChatScreen({super.key});

    List<Person> chats =[
   
   Person(
    name: "Programmer",
    image: "assets/per5.jpg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Maha",
    image: "assets/pers1.png",
    message: "Hi, Programmer how are you?"
   ),
   Person(
     name: "Muna",
    image: "assets/pers2.jpg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
     name: "Olaa",
    image: "assets/per4.jpg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Mayan",
    image: "assets/per6.jpg",
    message: "Hi, Programmer how are you?"
   ),
   Person(
    name: "Maather",
    image: "assets/pers4.jpg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
     name: "Maha",
    image: "assets/pers1.png",
    message: "Hi, Programmer how are you?"
   ),
    Person(
   name: "Muna",
    image: "assets/pers2.jpg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
    name: "Olaa",
    image: "assets/per4.jpg",
    message: "Hi, Programmer how are you?"
   ),
    Person(
    name: "Mayan",
    image: "assets/per6.jpg",
    message: "Hi, Programmer how are you?"
   ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Center(
          child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context,index){
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>
                  PersonalChat(person: chats[index],
                  
                  )
                ));
      
              },
              leading:  CircleAvatar(
              
              backgroundImage: AssetImage(chats[index].image!)),
              title: Text(chats[index].name!, style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(chats[index].message!),
              trailing: Column(
                children: [
                  Text("12:15",style: TextStyle(color: Color.fromARGB(255, 24, 139, 83)),),
                  Container(
                    width: 26,
                    height: 26,
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255, 24, 139, 83),

                      borderRadius: BorderRadius.circular(13)),
                      child: Center(child: Text("3",style: TextStyle(color: Colors.white),)),
                  )
                  // CircleAvatar(
                  //   backgroundColor:Color.fromARGB(255, 24, 139, 83),
                    
                  //   radius: 12,
                    
                  // ),
                
                ],
              )
          
      
            );
          }
        ),
        ) ,

    );
  }
}