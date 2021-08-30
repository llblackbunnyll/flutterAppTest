import 'package:flutter/material.dart';

class TestCenter extends StatelessWidget {
  const TestCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Center(
          heightFactor: 120,
          widthFactor: 150,
          child: Text("test"),
        ),
      )),
    );
  }
}
