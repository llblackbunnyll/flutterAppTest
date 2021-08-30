import 'package:flutter/material.dart';

class TestPadding extends StatelessWidget {
  const TestPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Text("test"),
        ),
      )),
    );
  }
}
