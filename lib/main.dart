import 'package:flutter/material.dart';
import 'package:belajar_flutter/list_divisi.dart';
import 'package:belajar_flutter/list_view.dart';
import 'package:belajar_flutter/basic1/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.deepOrange),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
      ),
      body: const GradientContainer(
        Color.fromARGB(255, 33, 5, 109),
        Color.fromARGB(255, 68, 21, 149),
      ),
    );
  }
}
