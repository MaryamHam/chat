import 'dart:io';
import 'package:chat/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:whatsapp_camera/whatsapp_camera.dart';


class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final files = ValueNotifier(<File>[]);

  @override
  void initState() {
    files.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    files.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: const Text("whatsapp camera")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.camera),
        onPressed: () async {
          List<File>? res = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
          if (res != null) files.value = res;
        },
      ),
      body: ListView.builder(
        itemCount: files.value.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            width: 200,
            child: Image.file(files.value[index]),
          );
        },
      ),
    );
  }
}

