// import 'package:chat/components/listtileItem.dart';
import 'package:chat/components/listtile_item.dart';
import 'package:flutter/material.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    
       body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      SizedBox(height: 20,),
      Container(
    
        child: const ListTile(
              
                leading:  CircleAvatar(
                
                backgroundImage: AssetImage("assets/per4.jpg")),
                title: Text("My status", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                subtitle: Text("Today, 12:30 am", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.more_vert),
            
        
              )
      ),
      Container(
        margin: EdgeInsets.only(left: 20,top: 30),
        child: Text("Recent Updates", style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.bold))),
      ListWidget(title: "Muna",subtitle: "Today, 10:30 ",image: "assets/per6.jpg"),
      ListWidget(title: "Maha",subtitle: "Today, 1:50 ",image: "assets/per5.jpg"),
    
       SizedBox(height: 20,),
      Container(
         margin: EdgeInsets.only(left: 20),
        child: Text("View Updates", style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.bold))),
      ListWidget(title: "Reham",subtitle: "Today, 7:15 ",image: "assets/pers1.png"),
      ListWidget(title: "Rafeef",subtitle: "Today, 5:22 ",image: "assets/pers2.jpg"),
    
      ]),
    
      ),
    );
  }
}