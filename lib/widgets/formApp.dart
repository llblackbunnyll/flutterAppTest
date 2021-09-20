import 'package:flutter/material.dart';

class FormApp extends StatelessWidget {
  final String name;
  // final result = "test";
  FormApp({required this.name});
  //const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form screen"),
        actions: [],
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx >= 15 || details.delta.dx <= -15) {
            print(details.delta.dx);
            Navigator.pop(context);
          }
        },
        child: Center(
          child: Text(
            "ลากนิ้ว " + name,
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
