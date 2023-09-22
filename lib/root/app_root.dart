import 'package:chat/screens/chats_screen.dart';
import 'package:chat/screens/home_screen.dart';
import 'package:chat/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}