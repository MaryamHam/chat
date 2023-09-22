import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
   ListTileItem({super.key,required this.title,required this.subtitle});

  String title;
  String subtitle;
  


  @override
  Widget build(BuildContext context) {
    return  Container(
                width: MediaQuery.sizeOf(context).width*.7,
                 child: ListTile(
                  leading:  CircleAvatar(
              
                 backgroundImage: AssetImage("assets/per4.jpg")),
                  title: Text(title, style: TextStyle(color: Color.fromARGB(255, 112, 110, 110),fontWeight: FontWeight.bold),),
                  subtitle: Text(subtitle, style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 112, 110, 110)),),
                 ),
               );
  }
}