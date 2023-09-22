import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
   ListWidget({super.key,required this.title,required this.subtitle,required this.image});

  String title;
  String subtitle;
  String image;



  @override
  Widget build(BuildContext context) {
    return  Container(
                width: MediaQuery.sizeOf(context).width*.7,
                 child: ListTile(
                  leading:CircleAvatar(
              
                 backgroundImage: AssetImage(image)),
                  title: Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  subtitle: Text(subtitle, style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 112, 110, 110)),),
                 ),
               );
  }
}