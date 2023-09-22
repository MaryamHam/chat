import 'package:chat/models/person.dart';
import 'package:chat/screens/call_screen.dart';
import 'package:chat/screens/camera_screen.dart';
import 'package:chat/screens/chat_item_screen.dart';
import 'package:chat/screens/chats_screen.dart';
import 'package:chat/screens/settings_screen.dart';
import 'package:chat/screens/state_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 97, 79),
        title: Text("WhatsApp"),

        actions: [
           Icon(Icons.search),
            PopupMenuButton(
            offset: Offset(3, 40),
              itemBuilder: (context){
              return ["settings","profile","log out"].map((e){
                return PopupMenuItem(
                child: Text(e),
                onTap: (){
                  //print(e);
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
                  

                },
                );
              } ).toList();
              
            }
            
            )

        ],



bottom: TabBar(
  
  indicatorColor: Colors.white,
  tabs: [
Tab(icon: Icon(Icons.camera_alt)),
Tab( text: "CHATS",),
Tab(text: "STATES",),
Tab( text: "CALLS",),
]

),
      ),
      
        body: TabBarView(
        
          children: [
          CameraScreen(),
          ChatScreen(),
          StateScreen(),
          CallScreen(),
      ]),
      
      floatingActionButton: FloatingActionButton(
       backgroundColor: Color.fromARGB(255, 15, 101, 65),
      onPressed: (){},
      child: Icon(Icons.message_rounded),),
      
      
      
      ),

      );
  }
}