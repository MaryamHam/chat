import 'package:chat/models/person.dart';
import 'package:chat/screens/chat_item_screen.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
   CallScreen({super.key});
  
    List<Person> chats =[
   
   Person(
    name: "Maha",
    image: "assets/pers1.png",
    message: "Missed"
   ),
   Person(
    name: "Muna",
    image: "assets/pers2.jpg",
    message: "Outgoing"
   ),
   Person(
    name: "Olaa",
    image: "assets/per4.jpg",
    message: "Missed"
   ),
   Person(
    name: "Mayan",
    image: "assets/per6.jpg",
    message: "Outgoing"
   ),
   Person(
    name: "Maather",
    image: "assets/pers4.jpg",
    message: "Outgoing"
   ),
    Person(
    name: "Maha",
    image: "assets/pers1.png",
    message: "Missed"
   ),
   Person(
    name: "Muna",
    image: "assets/pers2.jpg",
    message: "Outgoing"
   ),
   Person(
    name: "Olaa",
    image: "assets/per4.jpg",
    message: "Missed"
   ),
   Person(
    name: "Mayan",
    image: "assets/per6.jpg",
    message: "Outgoing"
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
                  Text("Friday",style: TextStyle(color: Color.fromARGB(255, 24, 139, 83)),),
                  Icon(Icons.check_circle,color: Colors.blue,)
                
                ],
              )
          
      
            );
          }
        ),
        ) ,

    );
  }
}