import 'package:chat/components/listtileItem.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
        appBar: AppBar(title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 19, 97, 79),),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
            Row(
            children: [
             CircleAvatar(
              backgroundImage: AssetImage("assets/per5.jpg"),
             ),
             SizedBox(width: MediaQuery.sizeOf(context).width*.04,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Text("Programmer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text("Hey there, I am using watsapp",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
              
              ],

             )
              
            ],
        
            ),

            
               SizedBox(height: MediaQuery.sizeOf(context).height*.08,),

               ListTileItem(
                title: "Account",
                subtitle: "Privcy,security,change number",
               ),

                ListTileItem(
                title: "Chat",
                subtitle: "Privcy,security,change number",
               ),
                ListTileItem(
                title: "Notification",
                subtitle: "Privcy,security,change number",
               ),
                ListTileItem(
                title: "Storge and Data",
                subtitle: "Privcy,security,change number",
               ),

               ListTileItem(
                title: "Help",
                subtitle: "Privcy,security,change number",
               ),



               Container(
                width: MediaQuery.sizeOf(context).width*.7,
                 child: ListTile(
                  leading: Icon(Icons.key, color: Color.fromARGB(255, 112, 110, 110),),
                  title: Text("Account", style: TextStyle(color: Color.fromARGB(255, 112, 110, 110),fontWeight: FontWeight.bold),),
                 
                 ),
               ),
SizedBox(height: MediaQuery.sizeOf(context).height*.08,),
               Column(
                children: [
                  Text("form", style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 21, 21, 21),fontWeight: FontWeight.bold)),
                  Text("Facebook", style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 21, 21, 21),fontWeight: FontWeight.bold),),
                ],
               )
            ],
        
        
          ),
        ),
    
    
        
      ),
    );
  }
}